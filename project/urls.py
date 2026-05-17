from django.urls import path
from project.views import *

urlpatterns = [
    path('projects/', projectPageFront, name='projectPageFront'),
    path('project/details/<str:slug>/', projectDetails, name='projectDetails'),
    path('project/details/<str:project_slug>/services/', projectServices, name='projectServices'),
    path('project/details/<str:project_slug>/services/<str:service_slug>/', projectServiceDetail, name='projectServiceDetail'),
]
