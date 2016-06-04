[1mdiff --cc ebdjango/urls.py[m
[1mindex b5592ae,6ebbbd2..0000000[m
[1m--- a/ebdjango/urls.py[m
[1m+++ b/ebdjango/urls.py[m
[36m@@@ -13,11 -13,14 +13,20 @@@[m [mIncluding another URLcon[m
      1. Import the include() function: from django.conf.urls import url, include[m
      2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))[m
  """[m
[31m -from django.conf.urls import url[m
[32m +from django.conf.urls import include,url[m
  from django.contrib import admin[m
[32m+ from dashing.utils import router[m
[32m+ from django.conf.urls import include[m
  [m
  urlpatterns = [[m
[32m++<<<<<<< HEAD[m
[32m +	url(r'^volunteerimpact/', include('volunteerimpact.urls.py')),[m
[32m +	url(r'^admin/', admin.site.urls),[m
[32m +    [m
[32m++=======[m
[32m+     url(r'^admin/', admin.site.urls),[m
[32m+     url(r'^dashboard/', include(router.urls)),[m
[32m++>>>>>>> 0766dc4b0bf0aba85f8a746883b79b4bb94e24cd[m
  ][m
[32m+ [m
[32m+ [m
