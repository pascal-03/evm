from django.http import HttpResponseRedirect
from django.shortcuts import render,redirect
from django.http import HttpResponse
from .forms import VotingForm, VoterIdForm
from django.urls import reverse
from django.db.models import F


from voting.models import Election, Post, Voter, Candidate, Ballot
# Create your views here.

def index(request):
  num_elections = Election.objects.filter(status='M').count()
  num_posts = Post.objects.all().count()
  num_candidates = Candidate.objects.all().count()
  num_voters = Voter.objects.all().count()

  context = {
         'num_elections': num_elections,
         'num_posts': num_posts,
         'num_candidates': num_candidates,
         'num_voters': num_voters,
         }
  
  if request.method == 'POST':
    form = VoterIdForm(request.POST)
    
    if form.is_valid():
       student_id = form.cleaned_data['student_id']
       try:
         voter = Voter.objects.get(school_id=student_id)
         request.session['voter_id'] = voter.id
         request.session['voter_name'] = voter.voter_name
         return HttpResponseRedirect(reverse('voting:elections'))
       except (Voter.DoesNotExist, Voter.MultipleObjectsReturned):
           message = 'Student Id: {student_id} is not found in our Voter List'.format(student_id=student_id)
           form.add_error("student_id", message)
           context['form'] = form
    else:
       context['form'] = form
  else:
    form = VoterIdForm()
    context['form'] = form

  return render(request,'voting/index.html', context=context)

def elections(request):
  election_list = Election.objects.filter(status='M')

  if (election_list.count() == 1):
       url = reverse('voting:election',kwargs={'election_id': election_list[0].id})
       return HttpResponseRedirect(url)

  context = {
      'election_list' : election_list
  }
  return render(request,'voting/elections.html', context=context)

def election(request,election_id):
  if request.method == 'POST':
    context = {}
    form = VotingForm(request.POST)
    
    if form.is_valid():
       voter_id = form.cleaned_data['voter_id']
       if (Ballot.objects.filter(voter_id=voter_id).count() != 0):
          return render(request,'voting/already_voted.html', context=context) 

       for key in request.POST.keys():
         if (key.startswith("post_")):
             candidate_id = request.POST[key]
             ballot = Ballot()
             ballot.voter = Voter(id=int(voter_id))
             ballot.candidate = Candidate(id=int(candidate_id))
             ballot.save()#
             candidate = Candidate.objects.get(id=int(candidate_id))
             candidate.votes = F('votes') + 1
             candidate.save()#
       return render(request,'voting/thank_you_for_voting.html', 
                                               context=context)
    else:
       context["forms"] = form
       return render(request,'voting/candidates.html', context=context)
      
  else:
    if ('voter_id' in request.session):
       voter_id = request.session['voter_id']
       del request.session['voter_id']
    else:
       return HttpResponseRedirect(reverse('voting:index'))

    if ('voter_name' in request.session):
       voter_name = request.session['voter_name']
       del request.session['voter_name']
    election = Election.objects.get(id=election_id)
     
    context = {
        'election': election,
        'voter_name' : voter_name,
        'election_name': election.desc_text
    }
    myform = VotingForm(initial={ 'election_id': election.id,
                                  'voter_id': voter_id})
    candidate_list = Candidate.objects.filter(election=election_id)
    post_list = Post.objects.all()
    post_dict = {}
    for post in post_list:
       post_dict[post.post_name] = post.id

    posts = {}
    for candidate in candidate_list:
        if not candidate.post.post_name in posts:
          posts[candidate.post.post_name] = {}
        posts[candidate.post.post_name][str(candidate.id)] = candidate.voter.voter_name
    myform.updateField(posts, post_dict)   
    context["forms"] = myform

    return render(request,'voting/candidates.html', context=context)

def results(request):
  election_list = Election.objects.filter(status='M')
  context = {
      'election_list' : election_list
  }
  return render(request,'voting/resultlist.html', context=context)

def result(request, election_id):
  candidate_list = Candidate.objects.filter(election=election_id).order_by('post','-votes')

  context= {'candidate_list': candidate_list}
  return render(request,'voting/result.html', context=context)
