from django.shortcuts import render


def home(request):
    return render(request, 'secnet/home.html')
