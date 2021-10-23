import discord
from discord import channel
from discord.ext import commands
import mysql.connector
import time

import random
import string
import datetime

HOST = "31.170.160.1"
USER = "u532373886_xZen2Ze"
PASS = "1234567890heheheHeehehe"
DATABASE = "u532373886_FrozenHub"
TABLENAME = "WhitelistData"

def randStr():
   letters = string.ascii_letters
   return ''.join(random.choice(letters) for i in range(random.randint(4,7)))


generate_result = randStr()+randStr()+randStr()+randStr()+randStr()

conn = mysql.connector.connect(
   host=HOST,
   user=USER,
   passwd=PASS,
   database=DATABASE
)
sql = f"INSERT INTO {TABLENAME} (UserKey,UserHWID,UserUsed,UserId,UserBlacklist,UserSecurity) VALUES ('{generate_result}','','false','','false','')"
cursor = conn.cursor()
cursor.execute(sql)
conn.commit()

print(generate_result)
time.sleep(999)