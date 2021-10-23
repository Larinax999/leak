const discord = module.require('discord.js')

module.exports.run = async (bot, message, con, log, role, makeid, args) => {
	console.log("BLACKLIST GPOCALLED")
	if (message.member.roles.cache.find(r => r.name === "Star X")) {
        if (args[1]) {
            if ((args[1].indexOf("<@!")) === 0) {
                console.log(args[1])
                let ada = args[2].split("!")[1].split(">")[0]
                con.query(`SELECT discord_id FROM whitelistgpo WHERE discord_id = '${ada}'`, function(err,res) {
                    if (err) throw err;
                    if (res.length > 0) {
                        con.query(`SELECT Blacklisted FROM whitelistgpo WHERE discord_id = '${ada}'`,function(err, res) {
                            if (err) throw err;
                            let fuckdead = 0
                            let realdead = ""
                            res.forEach(abc => {
                                fuckdead = fuckdead + 1
                                realdead = abc.Blacklisted
                            })
        
                            if (res.length > 0) {
                                if (res[0].Blacklisted === "False") {
                                    con.query(`UPDATE whitelistgpo SET Blacklisted = 'True' , Reason = 'Got Blacklist Bro Gg' WHERE discord_id = '${ada}'`, function(err , res) {
                                        if (err) throw err;
                                        if (res.warningCount === 0) {
                                            const exampleEmbed = new discord.MessageEmbed()
                                                .setAuthor('Xenon Bot')
                                                .setColor("#00FF95")
                                                .setDescription("<@" + ada + "> has bee blacklisted by <@" + message.member.id + ">")
                                                .setTimestamp()
                                                .setFooter("Blacklisted by " + message.member.id)
                                            message.channel.send(exampleEmbed);
                                            bot.users.cache.get(args[1]).send(exampleEmbed);
                                        }
                                    })
                                } else if (realdead === "False") {
                                    con.query(`UPDATE whitelistgpo SET Blacklisted = 'True' , Reason = 'Got Blacklist Bro Gg' WHERE discord_id = '${ada}'`, function(err , res) {
                                        if (err) throw err;
                                        if (res.warningCount === 0) {
                                            const exampleEmbed = new discord.MessageEmbed()
                                                .setAuthor('Xenon Bot')
                                                .setColor("#00FF95")
                                                .setDescription("<@" + ada + "> has bee blacklisted by <@" + message.member.id + ">")
                                                .setTimestamp()
                                                .setFooter("Blacklisted by " + message.member.id)
                                            message.channel.send(exampleEmbed);
                                            bot.users.cache.get(args[1]).send(exampleEmbed);
                                        }
                                    })
                                } else {
                                    const exampleEmbed = new discord.MessageEmbed()
                                        .setAuthor('Error❗️ ❗️ ')
                                        .setColor("#D12B61")
                                        .setDescription("<@" + ada + "> โดน Blacklist แล้ว!")
                                    message.channel.send(exampleEmbed);
                                }
                            } else {
                                const exampleEmbed = new discord.MessageEmbed()
                                    .setAuthor('Error❗️ ❗️ ')
                                    .setColor("#D12B61")
                                    .setDescription("<@" + ada + "> ไม่มี Whitelist")
                                message.channel.send(exampleEmbed);
                            }
                        })
                    } else {
                        const exampleEmbed = new discord.MessageEmbed()
                            .setAuthor('Error❗️ ❗️ ')
                            .setColor("#D12B61")
                            .setDescription("<@" + ada + "> ไม่มี Whitelist")
                        message.channel.send(exampleEmbed);
                    }
                }) 
            } else if (args[1]) {
                con.query(`SELECT discord_id FROM whitelistgpo WHERE discord_id = '${args[1]}'` , function (err , res123123) {
                    if (err) throw err;
                    console.log(res123123)
                    if (res123123.length > 0) {
                        con.query(`SELECT discord_id FROM whitelistgpo WHERE discord_id = '${res123123[0].discord_id}'`, function(err,res) {
                            if (err) throw err;
                            if (res.length > 0) {
                                con.query(`SELECT Blacklisted FROM whitelistgpo WHERE discord_id = '${res123123[0].discord_id}'`,function(err, res) {
                                    if (err) throw err;
                                    let fuckdead = 0
                                    let realdead = ""
                                    res.forEach(abc => {
                                        fuckdead = fuckdead + 1
                                        realdead = abc.Blacklisted
                                    })
                
                                    if (res.length > 0) {
                                        if (res[0].Blacklisted === "False") {
                                            con.query(`UPDATE whitelistgpo SET Blacklisted = 'True' , Reason = 'Got Blacklist Bro Gg' WHERE discord_id = '${args[1]}' AND Blacklisted = 'False'`, function(err , res) {
                                                if (err) throw err;
                                                if (res.warningCount === 0) {
                                                    const exampleEmbed = new discord.MessageEmbed()
                                                        .setAuthor('Xenon Bot')
                                                        .setColor("#00FF95")
                                                        .setDescription("<@" + args[1] + "> has bee blacklisted by <@" + message.member.id + ">")
                                                        .setTimestamp()
                                                        .setFooter("Blacklisted by " + message.member.id)
                                                    message.channel.send(exampleEmbed);
                                                    bot.users.cache.get(args[1]).send(exampleEmbed);
                                                }
                                            })
                                        } else if (realdead === "False") {
											console.log("asdasd")
                                            con.query(`UPDATE whitelistgpo SET Blacklisted = 'True' , Reason = 'Got Blacklist Bro Gg' WHERE discord_id = '${args[1]}' AND Blacklisted = 'False'`, function(err , res) {
                                                if (err) throw err;
                                                if (res.warningCount === 0) {
                                                    const exampleEmbed = new discord.MessageEmbed()
                                                        .setAuthor('Xenon Bot')
                                                        .setColor("#00FF95")
                                                        .setDescription("<@" + args[1] + "> has bee blacklisted by <@" + message.member.id + ">")
                                                        .setTimestamp()
                                                        .setFooter("Blacklisted by " + message.member.id)
                                                    message.channel.send(exampleEmbed);
                                                    bot.users.cache.get(args[1]).send(exampleEmbed);
                                                }
                                            })
                                        } else {
                                            const exampleEmbed = new discord.MessageEmbed()
                                                .setAuthor('Error❗️ ❗️ ')
                                                .setColor("#D12B61")
                                                .setDescription("<@" + res123123[0].discord_id + "> โดน Blacklist แล้ว!")
                                            message.channel.send(exampleEmbed);
                                        }
                                    } else {
                                        const exampleEmbed = new discord.MessageEmbed()
                                            .setAuthor('Error❗️ ❗️ ')
                                            .setColor("#D12B61")
                                            .setDescription("<@" + res123123[0].discord_id + "> ไม่มี Whitelist")
                                        message.channel.send(exampleEmbed);
                                    }
                                })
                            } else {
                                const exampleEmbed = new discord.MessageEmbed()
                                    .setAuthor('Error❗️ ❗️ ')
                                    .setColor("#D12B61")
                                    .setDescription("<@" + res123123[0].discord_id + "> ไม่มี Whitelist")
                                message.channel.send(exampleEmbed);
                            }
                        }) 
                    } else {
                        // not whitelist
                    }
                })
            }
        } else {
            const exampleEmbed = new discord.MessageEmbed()
                .setAuthor('Error❗️ ❗️ ')
                .setColor("#D12B61")
                .setDescription("พิมพ์ผิด โปรดพิมพ์ !blacklist {user}")
            message.channel.send(exampleEmbed);
        }
    }
}

module.exports.help = {
    name: "blacklistgpo"
}