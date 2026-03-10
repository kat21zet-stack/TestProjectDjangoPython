from django.shortcuts import render
from .models import Slide


def index(request):
    slides = Slide.objects.filter(is_active=True).select_related('image')
    return render(request, 'core/index.html', {'slides': slides})
