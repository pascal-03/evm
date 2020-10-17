from django import forms
from .models import Voter
class VotingForm(forms.Form):

  election_id = forms.IntegerField(widget=forms.HiddenInput)
  voter_id = forms.IntegerField(widget=forms.HiddenInput)

  def updateField(self,posts,post_dict):
      for key in  posts.keys():
        lt = list(posts[key].items())
        self.fields["post_" + str(post_dict[key])] = forms.ChoiceField(label=key, 
                           choices=tuple(lt), 
                           widget=forms.RadioSelect)


class VoterIdForm(forms.Form):
   
    student_id = forms.CharField(label='Enter Student Id',
                                  max_length=20)

