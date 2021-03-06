from django.urls import path

from . import views
app_name = 'voting'
urlpatterns = [
    path('', views.index, name='index'),
    path('elections/', views.elections, name='elections'),
    path('election/<int:election_id>/', views.election, name='election'),
    path('results/', views.results, name='results'),
    path('result/<int:election_id>/', views.result, name='result'),
]
