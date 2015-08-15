from django.conf.urls import include, url
from django.contrib import admin
from core.views import IndexView

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', IndexView.as_view())
]
