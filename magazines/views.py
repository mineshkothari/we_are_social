from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from .models import Magazine


@login_required
def all_magazines(request):
    magazines = Magazine.objects.all()
    return render(request, "magazines.html", {"magazines": magazines})
