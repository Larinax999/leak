import discord
from discord import channel
from discord.ext import commands
import mysql.connector

import random
import string
import datetime

### SQL ###
HOST = "31.170.160.1"
USER = "u532373886_xZen2Ze"
PASS = "1234567890heheheHeehehe"
DATABASE = "u532373886_FrozenHub"
TABLENAME = "WhitelistData"

client = commands.Bot(command_prefix="-")
client.remove_command('help')

@client.event
async def on_ready():
    print("BOT Frozen IS START NOW!")

@client.command(pass_context=True)
@commands.dm_only()
async def help(ctx):
    embed = discord.Embed(
        title = 'Commands !',
        description = '1.) -redeem (How To Redeem : https://www.youtube.com/watch?v=f4Mb6bb1a5g)\n2.) -getscript\n3.) -resethwid',
        color = discord.Colour.blue()
    )

    embed.timestamp = datetime.datetime.utcnow()
    embed.set_footer(
        text = " Frozen Hub (❁´◡`❁) "
    )
    await ctx.author.send(embed=embed)


@client.command()
@commands.dm_only()
async def getscript(ctx):
    sqlused = f"SELECT * FROM {TABLENAME}"
    conn = mysql.connector.connect(
        host=HOST,
        user=USER,
        passwd=PASS,
        database=DATABASE
    ) 
    check = conn.cursor()
    check.execute(sqlused)
    checkresult = check.fetchall()

    for i in checkresult:
        if i[3] == str(ctx.author.id):
            embed = discord.Embed(
                title = " ✅ Script",
                description = f"```lua\ngetgenv().Key = '{i[0]}'\nloadstring(game:HttpGet('https://raw.githubusercontent.com/FrozenHubNo1/Hub/main/Script.lua'))()\n```",
                color = discord.Colour.blue()
            )

            embed.timestamp = datetime.datetime.utcnow()
            embed.set_footer(
                text = " Frozen Hub (❁´◡`❁) "
            )

            await ctx.author.send(embed=embed)

@client.command()
@commands.dm_only()
async def resethwid(ctx):
    embedhwid = discord.Embed(
        title = 'Reset HWID Successfully !',
        description = ' ',
        color = discord.Colour.blue()
    )

    embedhwid.timestamp = datetime.datetime.utcnow()
    embedhwid.set_footer(
        text = " Frozen Hub (❁´◡`❁) "
    )
    await ctx.author.send(embed=embedhwid)

    sqlused = f"UPDATE {TABLENAME} SET UserHWID = '' WHERE UserId = '{ctx.author.id}'"
    conn = mysql.connector.connect(
        host=HOST,
        user=USER,
        passwd=PASS,
        database=DATABASE
    ) 
    re = conn.cursor()
    re.execute(sqlused)
    conn.commit()

@client.command()
@commands.dm_only()
async def redeem(ctx):
    embedkey = discord.Embed(
        title = 'Your Key To Redeem : ',
        description = ' ',
        color = discord.Colour.blue()
    )

    embedkey.timestamp = datetime.datetime.utcnow()
    embedkey.set_footer(
        text = " Frozen Hub (❁´◡`❁) "
    )
    await ctx.author.send(embed=embedkey)

    ############################################# GETINFO

    message = await client.wait_for("message", check=lambda m: m.author == ctx.author and m.channel == ctx.channel)

    if (message):
        keytofind = message.content
        sqlused = f"SELECT * FROM {TABLENAME}"
        conn = mysql.connector.connect(
            host=HOST,
            user=USER,
            passwd=PASS,
            database=DATABASE
        ) 
        check = conn.cursor()
        check.execute(sqlused)
        checkresult = check.fetchall()
        checkkey = "false"
        checkused = "false"

        for i in checkresult:
            if i[0] == keytofind:
                checkkey = "true"
            if i[0] == keytofind and i[2] == "false":
                checkused = "true"

        if checkkey == "true" and checkused == "true":
            conn = mysql.connector.connect(
                host=HOST,
                user=USER,
                passwd=PASS,
                database=DATABASE
            ) 
            sqldatabase1 = f"UPDATE {TABLENAME} SET UserUsed = 'true' WHERE UserKey = '{keytofind}'"
            sqldatabase2 = f"UPDATE {TABLENAME} SET UserId = '{ctx.author.id}' WHERE UserKey = '{keytofind}'"
            cursor = conn.cursor()
            cursor.execute(sqldatabase1)
            cursor.execute(sqldatabase2)
            conn.commit()

            embed = discord.Embed(
                title = "Redeemed !",
                description = ' ',
                color = discord.Colour.blue()
            )

            embed.timestamp = datetime.datetime.utcnow()
            embed.set_footer(
                text = " Frozen Hub (❁´◡`❁) "
            )

            await ctx.author.send(embed=embed)

            
        else:
            embed = discord.Embed(
                title = "Can't Redeem",
                description = 'This Key Is Wrong Or This Key Already Redeemed !',
                color = discord.Colour.blue()
            )

            embed.timestamp = datetime.datetime.utcnow()
            embed.set_footer(
                text = " Frozen Hub (❁´◡`❁) "
            )

            await ctx.author.send(embed=embed)



client.run('ODU1MDYxNjc4NTgzNTc4Njc1.YMtAPg.Xl4OTC6Y-dpSvzRT2c0SWl5RHis')