from django.http import HttpResponse
from django.template import loader
# from .models import MyTable


def index(request):
    template = loader.get_template("my_django_template/index.html")
    return HttpResponse(template.render({}, request))
