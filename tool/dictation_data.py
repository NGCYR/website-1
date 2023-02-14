from .DicDb import MysqlDb
import logging
import time

def justifyer(selection_cn,selection_en,user_id,choice): 
    try:    
        mydb = MysqlDb()
        mydb.initDB()
        select_sql = "SELECT "+selection_cn+","+selection_en+" FROM wordlist_"+user_id+" WHERE id_language = 'en' AND "+selection_cn+" != '' AND "+selection_en+" != '' ORDER BY RAND() LIMIT 1 "
        select_sql_2 = "SELECT "+selection_cn+","+selection_en+" FROM wordlist_"+user_id+" WHERE id_language = 'en' AND "+selection_cn+" != '' AND "+selection_en+" != ''" 
        data_1 = mydb.select_data(select_sql)
        data_2 = mydb.select_data(select_sql_2)
        if choice == 'true':
            result = data_2['result']
            return result
        else:
            result = data_1['result'][0]
            #print(result)
            return result

    except Exception as e:
        logging.exception(e)
        return -1
    

def insert_to_mistake(mistake,user_input,user_id,chinese):
    try:
        mydb = MysqlDb()
        mydb.initDB()
        localtime = time.strftime("%m/%d/%Y, %H:%M:%S", time.localtime())
        insert_sql = "INSERT INTO mistake_book_"+user_id+" VALUES ('"+mistake+"','"+chinese+"','"+user_input+"','"+localtime+"')"
        mydb.insert_data(insert_sql,None)
        mydb.close_connect()
    except Exception as e:
        logging.exception(e)
        return -1

def select_from_mistake(user_id):
    try:
        mydb = MysqlDb()
        mydb.initDB()
        select_sql = "SELECT * FROM mistake_book_"+user_id+""
        result = mydb.select_data(select_sql)
        mydb.close_connect()
        return result
    
    except Exception as e:
        logging.exception(e)
        return -1

def clear_table_data(user_id):
    try:
        mydb = MysqlDb()
        mydb.initDB()
        clear_data = "truncate table mistake_book_"+user_id+""
        mydb.truncate_data(clear_data)
        mydb.close_connect()
        return 1
    
    except Exception as e:
        logging.exception(e)
        return -1
    
def import_words(user_english,user_chinese,user_id):
    try:
        mydb = MysqlDb()
        mydb.initDB()
        insert_sql = "INSERT INTO wordlist_"+user_id+" VALUES ('"+user_english+"','"+user_chinese+"','en')"
        mydb.insert_data(insert_sql,None)
        mydb.close_connect
        return 1
    except Exception as e:
        logging.exception(e)
        return -1

def select_from_wordlists(user_id):
    try:
        mydb = MysqlDb()
        mydb.initDB()
        select_sql = "SELECT * FROM wordlist_"+user_id+""
        result = mydb.select_data(select_sql)
        mydb.close_connect()
        return result
    
    except Exception as e:
        logging.exception(e)
        return -1
    
def delete_wordlist_row(user_id, user_english, user_chinese):
    try:
        mydb = MysqlDb()
        mydb.initDB()
        delete_sql = "DELETE FROM wordlist_"+user_id+" WHERE id_user_english = '"+user_english+"' AND id_user_chinese = '"+user_chinese+"'"
        result = mydb.delete_data(delete_sql)
        return result
    except Exception as e:
        logging.exception(e)
        return -1