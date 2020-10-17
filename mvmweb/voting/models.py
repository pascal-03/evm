from django.db import models

# Create your models here.

class Election(models.Model):

    ELECTION_STATUS = (
        ('P','Planning'),
        ('M', 'Active'),
        ('C', 'Closed'),
    )
    desc_text = models.CharField('Description', max_length=200)
    status = models.CharField('Election Status', choices=ELECTION_STATUS, max_length=1)
    def __str__(self):
        return self.desc_text

class Post (models.Model):
    post_name = models.CharField('Post Name',max_length=100)
    display_order = models.PositiveIntegerField('Display Order',default=0)
    def __str__(self):
        return self.post_name


class Voter(models.Model):
    voter_name = models.CharField('Voter Name', max_length=100)
    date_of_birth = models.DateField('Date of Birth')    
    school_id = models.CharField('School Id', max_length=50,unique = True)
    def __str__(self):
        return self.voter_name 

class Candidate (models.Model):
    election = models.ForeignKey(Election, on_delete=models.CASCADE)
    voter = models.ForeignKey(Voter, on_delete=models.CASCADE)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    votes = models.PositiveIntegerField(default=0)
    def __str__(self):
        return str(self.voter) 

class Ballot (models.Model):
    voter = models.ForeignKey(Voter,on_delete = models.DO_NOTHING)
    candidate = models.ForeignKey(Candidate, on_delete = models.DO_NOTHING)
    time_stamp = models.DateTimeField('Time Stamp',auto_now = True)
