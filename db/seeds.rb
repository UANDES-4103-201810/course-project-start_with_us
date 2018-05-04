# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(name:"User")
Role.create(name:"Admin")
Role.create(name:"Publisher")

User.create(email:"jvejar1@miuandes.cl",password:"12312312a",role_id:1)
Profile.create(user_id: 1, name: "Juan Esteban", last_name: "Vejar", about_me: "Soy entero Ave")
User.create(email:"pgrand@miuandes.cl",password:"12312312a",role_id:2)
Profile.create(user_id: 2, name: "Pedro", last_name: "Grand", about_me: "Its The God Raydas")
User.create(email:"perro@miuandes.cl",password:"12312312a",role_id:1)
Profile.create(user_id: 3, name: "Javier", last_name: "Soto", about_me: "Helooooou")
User.create(email:"petersama@miuandes.cl",password:"12312312a",role_id:1)
Profile.create(user_id: 4, name: "Peter", last_name: "Sama", about_me: "Omae Wae Mou Shindeiru!")

Project.create(user_id: 1, title:"Neova | A Unique Connected Ring For Musicians",description: "Neova is a connected ring that identifies extremely natural hand gestures and faithfully interprets each subtlety into musical expression. This MIDI controller can be freely assigned to any effect from your DAW or hardware synthesizer. It results in a purposeful tool enabling new forms of creativity.", goal_amount: 100000, status: "published", delivery_date: Date.parse("26/9/2018"))
Promise.create(project_id: 1, price: 39, description: "Our plans include unlimited texting, and calling, starting as low as $9.99 per month with no contracts. We even have a free, Wi-Fi only version of TextNow, available for download on your existing device.", quantity: 10)
Promise.create(project_id: 1, price: 45, description: "Send messages and make calls on your computer or tablet, then access them from your phone while on the go. The free TextNow App is available on iOS, Android, Windows Phone, Windows Desktop, Mac OS X, and online at TextNow.com.", quantity: 20)
Promise.create(project_id: 1, price: 100, description: "Wi-Fi can provide you with added coverage in places where cell networks don't always work - like basements and apartments. No roaming fees for Wi-Fi connections also means you stay connected while travelling the world.", quantity: 35)
Promise.create(project_id: 1, price: 30, description: "Our phones come with a 30-day money-back guarantee and 1 year warranty. If you aren't satisfied just send your phone back for a refund (we'll pay the postage).", quantity: 15)

Project.create(user_id: 1, title:"ELIA—the world’s most intuitive tactile reading system",description: "In 1829, Louis Braille published the first book introducing the braille system—and while the applications of braille have been immense, the system is designed around the outdated technologies of the 1800s.We've created a modern, efficient alternative that's incredibly easy to learn for people who have a visual impairment. ", goal_amount: 100000, status: "published", delivery_date: Date.parse("26/9/2018"))
Promise.create(project_id: 2, price: 39, description: "Our plans include unlimited texting, and calling, starting as low as $9.99 per month with no contracts. We even have a free, Wi-Fi only version of TextNow, available for download on your existing device.", quantity: 10)
Promise.create(project_id: 2, price: 45, description: "Send messages and make calls on your computer or tablet, then access them from your phone while on the go. The free TextNow App is available on iOS, Android, Windows Phone, Windows Desktop, Mac OS X, and online at TextNow.com.", quantity: 20)
Promise.create(project_id: 2, price: 100, description: "Wi-Fi can provide you with added coverage in places where cell networks don't always work - like basements and apartments. No roaming fees for Wi-Fi connections also means you stay connected while travelling the world.", quantity: 35)
Promise.create(project_id: 2, price: 30, description: "Our phones come with a 30-day money-back guarantee and 1 year warranty. If you aren't satisfied just send your phone back for a refund (we'll pay the postage).", quantity: 15)

Project.create(user_id: 1, title:"Will Burtin - neglected giant of design",description: "Will Burtin might be the most important designer you’ve never heard of, and like so many visionaries, he was ahead of his time. As the authors of this new book, Will Burtin: Journey to Understanding, state: ‘Will Burtin’s contributions to design can be characterised as important as Albert Einstein’s contributions to science. While his brilliant discoveries in physics gave Einstein his reputation, Burtin’s scientific approach to design should have also given him a revolutionary place in design history.’", goal_amount: 100000, status: "published", delivery_date: Date.parse("26/9/2018"))
Promise.create(project_id: 3, price: 39, description: "Our plans include unlimited texting, and calling, starting as low as $9.99 per month with no contracts. We even have a free, Wi-Fi only version of TextNow, available for download on your existing device.", quantity: 10)
Promise.create(project_id: 3, price: 45, description: "Send messages and make calls on your computer or tablet, then access them from your phone while on the go. The free TextNow App is available on iOS, Android, Windows Phone, Windows Desktop, Mac OS X, and online at TextNow.com.", quantity: 20)
Promise.create(project_id: 3, price: 100, description: "Wi-Fi can provide you with added coverage in places where cell networks don't always work - like basements and apartments. No roaming fees for Wi-Fi connections also means you stay connected while travelling the world.", quantity: 35)
Promise.create(project_id: 3, price: 30, description: "Our phones come with a 30-day money-back guarantee and 1 year warranty. If you aren't satisfied just send your phone back for a refund (we'll pay the postage).", quantity: 15)

Project.create(user_id: 1, title:"FinalStraw, the world's first collapsible, reusable straw",description: "We are so excited about this project. We’ve had many sleepless nights making sure that everything is perfect. Still, we can’t foresee every problem so we’re committed to fixing any challenges that may arise during the fulfillment process.", goal_amount: 100000, status: "published", delivery_date: Date.parse("26/9/2018"))
Promise.create(project_id: 4, price: 39, description: "Our plans include unlimited texting, and calling, starting as low as $9.99 per month with no contracts. We even have a free, Wi-Fi only version of TextNow, available for download on your existing device.", quantity: 10)
Promise.create(project_id: 4, price: 45, description: "Send messages and make calls on your computer or tablet, then access them from your phone while on the go. The free TextNow App is available on iOS, Android, Windows Phone, Windows Desktop, Mac OS X, and online at TextNow.com.", quantity: 20)
Promise.create(project_id: 4, price: 100, description: "Wi-Fi can provide you with added coverage in places where cell networks don't always work - like basements and apartments. No roaming fees for Wi-Fi connections also means you stay connected while travelling the world.", quantity: 35)
Promise.create(project_id: 4, price: 30, description: "Our phones come with a 30-day money-back guarantee and 1 year warranty. If you aren't satisfied just send your phone back for a refund (we'll pay the postage).", quantity: 15)

