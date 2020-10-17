from django.contrib import admin
from .models import Election
from .models import Post
from .models import Candidate
from .models import Voter

class ElectionAdmin(admin.ModelAdmin):
   list_display = ('desc_text','status')

class CandidateAdmin(admin.ModelAdmin):
   list_display = ('voter','post','votes','election')
   list_filter = ['post']
   radio_fields = {"post": admin.VERTICAL}
   raw_id_fields= ('voter',)
   exclude = ('votes',)

class VoterAdmin(admin.ModelAdmin):
   list_display = ('voter_name', 'date_of_birth', 'school_id')
   search_fields = ['voter_name','school_id']
   list_per_page = 10
# Register your models here.


admin.site.register(Election, ElectionAdmin)
admin.site.register(Post)
admin.site.register(Candidate,CandidateAdmin)
admin.site.register(Voter,VoterAdmin)
