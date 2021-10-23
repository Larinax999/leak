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

key = str(input("Your Key To Blacklist : "))

sqlused = f"UPDATE {TABLENAME} SET UserBlacklist = 'true' WHERE UserKey = '{key}'"
conn = mysql.connector.connect(
    host=HOST,
    user=USER,
    passwd=PASS,
    database=DATABASE
) 
re = conn.cursor()
re.execute(sqlused)
conn.commit()

print("Blacklist Successfully!")