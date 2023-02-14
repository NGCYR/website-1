from django.shortcuts import render
from django.http import HttpResponse
from django.http import JsonResponse
from  tool.createNewUser import *
from tool.dictation_data import *

def homeview(request):
    return render(request,'Home.html')

def login(request):
    return render(request, 'login.html')

def register(request):
    return render(request, 'Register.html')

def dictionary(request):
    return render(request, 'select.html')

def dictation(request):
    return render(request, 'dictation.html')

def user_wordlist_dictation(request):
    return render(request, 'user_dictation.html')
    
def mistake(request):
    return render(request, 'mistake.html')

def wordlists(request):
    return render(request, 'wordlists.html')

def wordsimport(request):
    return render(request, 'wordsimport.html')

def secret(request):
    return render(request, 'secret.html')

def create_newUser(request):
    print("view:create user")
    print(request)
    username=request.POST.get("username")
    password=request.POST.get("user_password")
    print(username, password)
    data = {
        'user_created': createNewUser(username, password),
        'user_id':select_user_id(username)
    }
    print(data)
    return JsonResponse(data)

def do_userlogin(request):
    username=request.POST.get("username")
    password=request.POST.get("user_password")
    print(username, password)

    data = {
        'user_permitted': userLogin(username, password),
        'user_id':select_user_id(username)
    }
    return JsonResponse(data)

def do_justify(request):
    choice = request.GET['choice']
    id = 0
    user_id = str(id)
    selection_cn = "phonic_chinese"
    selection_en = "word"

    result = justifyer(selection_cn,selection_en,user_id,choice)
    data = {
        'phonic_chinese':result[0],
        'word':result[1]
    }
    return JsonResponse(data)

def do_select_user_data(request):
    user_id = request.GET['user_id']
    choice = request.GET['choice']
    selection_cn = "id_user_chinese"
    selection_en = "id_user_english"
    result = justifyer(selection_cn,selection_en,user_id,choice)
    print(result)
    data = {
        'all_words' : result
    }
    return JsonResponse(data)


def do_insert_data(request):
    #print("inserting")
    mistake = request.GET['mistake']
    chinese = request.GET['chinese']
    user_input = request.GET['user_input']
    user_id = request.GET['user_id']
    #print(mistake)
    result = insert_to_mistake(mistake,user_input,user_id,chinese)
    #print(result)


def do_select_data(request):
    user_id = request.GET['user_id']
    result = select_from_mistake(user_id)
    data = {
        'mistake_data':result
    }
    return JsonResponse(data)

def do_clear_table(request):
    print("clearing...")
    user_id = request.GET['user_id']
    result = clear_table_data(user_id)
    return JsonResponse(result)

def do_delete_row(request):
    user_id = request.GET['user_id']
    user_english = request.GET['user_english']
    user_chinese = request.GET['user_chinese']
    result = delete_wordlist_row(user_id,user_english,user_chinese)
    return JsonResponse(result)


def do_import_words(request):
    user_english = request.GET['user_english']
    user_chinese = request.GET['user_chinese']
    user_id = request.GET['user_id']
    result = import_words(user_english,user_chinese,user_id)
    return JsonResponse(result)

def do_display_table(request):
    user_id = request.GET['user_id']
    result = select_from_wordlists(user_id)
    data = {
        'wordlist_data' : result
    }
    return JsonResponse(data)