from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
# def home(request):
#     return HttpResponse('<h1>Blog Home</h1>')

# def home(request):
#     return render(request,'blog/temp.html')

posts = [ # dictionary
    {
        'author': 'Tom',
        'title': 'Blog Post 1',
        'content': 'First post content',
        'date_posted': 'January 19, 2025'
    },
    {
        'author': 'Jerry',
        'title': 'Blog Post 2',
        'content': 'Second post content',
        'date_posted': 'January 17, 2025'
    }
]

def home(request):
    context = { 
        'posts': posts # dictionary
    }
    return render(request, 'blog/temp.html', context)

def about(request):
    return HttpResponse('<h1>Blog About</h1>')
