from threading import local
import time
import logging
from .DicDb import MysqlDb
import random
def createNewUser(username, password):
    try:
        print("create user")
        mydb = MysqlDb()
        mydb.initDB()
        id = random.randint(1,100000)
        user_id = str(id)
        select_sql = "SELECT * FROM  user_management WHERE username = '" + username + "';"
        select_id =  "SELECT * FROM  user_management WHERE user_id = '" + user_id + "';"
        print(select_sql)
        data_Collection = mydb.select_data(select_sql)
        id_collection = mydb.select_data(select_id)
        id_result = id_collection['num']
        result = data_Collection['num']
        while id_result != 0:
            id = random.randint(1,100000)
            user_id = str(id)
            select_id =  "SELECT * FROM  user_management WHERE user_id = '" + user_id + "';"
            id_result = id_collection['num']
        if result == 0:
            localtime = time.strftime("%Y%m%d%H%M%S", time.localtime())
            print(localtime)
            insSql="INSERT INTO user_management VALUES ('"+ username + "', '" + password + "','"+user_id+"');"
            print(insSql)
            result = mydb.insert_data(insSql, None)
            create_mistake_book = "CREATE TABLE mistake_book_"+user_id+"(id_wrong_words varchar(45) NOT NULL, id_chinese varchar(255) NOT NULL, user_input varchar(45) NOT NULL, local_time varchar(45) NOT NULL);"
            create_wordlist = "CREATE TABLE wordlist_"+user_id+"(id_user_english varchar(45) NOT NULL, id_user_chinese varchar(45) NOT NULL, id_language varchar(45) NOT NULL);"
            print(create_mistake_book)
            mydb.create_table(create_mistake_book)
            mydb.create_table(create_wordlist)
            mydb.close_connect()

            return result
    except Exception as e:
        logging.exception(e)
        return -1

def userLogin(username, password):
    try:
        mydb = MysqlDb()
        mydb.initDB()

        select_sql = "SELECT * FROM  user_management WHERE username = '" + username + "' and user_password = '" + password +"';"
        print(select_sql)
        data_Collection = mydb.select_data(select_sql)

        result = data_Collection['num']

        mydb.close_connect()

        if (result == 0):
            return 0
        else:
            return 1
    except Exception as e:
        logging.exception(e)
        return -1
    
def select_user_id(username):
    try:
        mydb = MysqlDb()
        mydb.initDB()
        select_sql = "SELECT user_id FROM user_management WHERE Username = '"+username+"';"
        result = mydb.select_data(select_sql)
        user_id = result['result'][0][0]
        print(user_id)
        return user_id
    except Exception as e:
        logging.exception(e)
        return -1


