"""mysite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from myapp import views as myview

urlpatterns = [
    path('login/', myview.login),
    path('admin/', admin.site.urls),
    path('home/', myview.homeview),
    path('register/', myview.register),
    path('dictionary/', myview.dictionary),
    path('ajax/create_newUser/', myview.create_newUser),
    path('ajax/user_login/', myview.do_userlogin),
    path('ajax/data_select/',myview.do_justify),
    path('ajax/user_data_select/',myview.do_select_user_data),
    path('ajax/insert_data/', myview.do_insert_data),
    path('ajax/table_data/',myview.do_select_data),
    path('ajax/clear_table/',myview.do_clear_table),
    path('ajax/import_words/',myview.do_import_words),
    path('ajax/display_table/',myview.do_display_table),
    path('ajax/delete_row/',myview.do_delete_row),
    path('dictation/', myview.dictation),
    path('dictation/user_wordlist/',myview.user_wordlist_dictation),
    path('mistakes/', myview.mistake),
    path('wordlists/', myview.wordlists),
    path('wordsimport/',myview.wordsimport),
    path('secret/',myview.secret), 
]

