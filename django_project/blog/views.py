from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
# def home(request):
#     return HttpResponse('<h1>Blog Home</h1>')

def home(request):
    return render(request,'blog/temp.html')

def about(request):
    return HttpResponse('<h1>Blog About</h1>')
