import discord
from discord import channel
from discord.ext import commands
import mysql.connector

import random
import string
import datetime

### SQL ###
HOST = ""
USER = ""
PASS = ""
DATABASE = ""
TABLENAME = ""

client = commands.Bot(command_prefix="-")

@client.event
async def on_ready():
    print("BOT Frozen IS START NOW!")

@client.command()
@commands.dm_only()
async def genkey(ctx):
    if ctx.author.id == 822479576000888872:
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

        embedgen = discord.Embed(
            title = 'Generate Key',
            description = generate_result,
            color = discord.Colour.blue()
        )

        embedgen.timestamp = datetime.datetime.utcnow()
        embedgen.set_footer(
            text = " Frozen Hub (❁´◡`❁) "
        )
        await ctx.send(embed=embedgen)

@client.command()
@commands.dm_only()
async def genkey2(ctx):
    if ctx.author.id == 755006842655997972:
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

        embedgen = discord.Embed(
            title = 'Generate Key',
            description = generate_result,
            color = discord.Colour.blue()
        )

        embedgen.timestamp = datetime.datetime.utcnow()
        embedgen.set_footer(
            text = " Frozen Hub (❁´◡`❁) "
        )
        await ctx.send(embed=embedgen)

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
                description = f"```lua\ngetgenv().Key = '{i[0]}'\nloadstring(game:HttpGet('https://raw.githubusercontent.com/24Thmors/Mk.2/main/Frozen.lua'))()\n```",
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
async def blacklist(ctx):
    embed = discord.Embed(
        title = 'Key To Blacklist : ',
        description = ' ',
        color = discord.Colour.blue()
    )

    embed.timestamp = datetime.datetime.utcnow()
    embed.set_footer(
        text = " Frozen Hub (❁´◡`❁) "
    )
    await ctx.author.send(embed=embed)

    message = await client.wait_for("message", check=lambda m: m.author == ctx.author and m.channel == ctx.channel)

    if (message):
        sqlused = f"UPDATE {TABLENAME} SET UserBlacklist = 'true' WHERE UserKey = '{message.content}'"
        conn = mysql.connector.connect(
            host=HOST,
            user=USER,
            passwd=PASS,
            database=DATABASE
        ) 
        re = conn.cursor()
        re.execute(sqlused)
        conn.commit()
        embed2 = discord.Embed(
            title = 'Blacklist Successfully !',
            description = ' ',
            color = discord.Colour.blue()
        )

        embed2.timestamp = datetime.datetime.utcnow()
        embed2.set_footer(
            text = " Frozen Hub (❁´◡`❁) "
        )
        await ctx.author.send(embed=embed2)

@client.command()
@commands.dm_only()
async def unblacklist(ctx):
    embed = discord.Embed(
        title = 'Key To UnBlacklist : ',
        description = ' ',
        color = discord.Colour.gold()
    )

    embed.timestamp = datetime.datetime.utcnow()
    embed.set_footer(
        text = " Frozen Hub (❁´◡`❁) "
    )
    await ctx.author.send(embed=embed)

    message = await client.wait_for("message", check=lambda m: m.author == ctx.author and m.channel == ctx.channel)

    if (message):
        sqlused = f"UPDATE {TABLENAME} SET UserBlacklist = 'false' WHERE UserKey = '{message.content}'"
        conn = mysql.connector.connect(
            host=HOST,
            user=USER,
            passwd=PASS,
            database=DATABASE
        ) 
        re = conn.cursor()
        re.execute(sqlused)
        conn.commit()
        embed2 = discord.Embed(
            title = 'UnBlacklist Successfully !',
            description = ' ',
            color = discord.Colour.blue()
        )

        embed2.timestamp = datetime.datetime.utcnow()
        embed2.set_footer(
            text = " Frozen Hub (❁´◡`❁) "
        )
        await ctx.author.send(embed=embed2)


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



client.run('ODU1MDYxNjc4NTgzNTc4Njc1.YMtAPg.iGaAslLC3gs49PK9jH3SzpzBjyg')