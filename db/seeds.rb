#Roles
Role.create(name:"User")
Role.create(name:"Admin")
Role.create(name:"Publisher")

#Users
User.create(email:"jvejar1@miuandes.cl",password:"12312312a",role_id:1)
User.create(email:"pgrand@miuandes.cl",password:"12312312a",role_id:2)
User.create(email:"perro@miuandes.cl",password:"12312312a",role_id:1)
User.create(email:"petersama@miuandes.cl",password:"12312312a",role_id:1)

#Profiles
Profile.create(user_id: 1, name: "Juan Esteban", last_name: "Vejar", about_me: "Soy entero Ave")
Profile.create(user_id: 2, name: "Pedro", last_name: "Grand", about_me: "Its The God Raydas")
Profile.create(user_id: 3, name: "Javier", last_name: "Soto", about_me: "Helooooou")
Profile.create(user_id: 4, name: "Peter", last_name: "Sama", about_me: "Omae Wae Mou Shindeiru!")

#Projects
Project.create(user_id: 1, title:"ELIA—the world’s most intuitive tactile reading system",description: "In 1829, Louis Braille published the first book introducing the braille system—and while the applications of braille have been immense, the system is designed around the outdated technologies of the 1800s.We've created a modern, efficient alternative that's incredibly easy to learn for people who have a visual impairment. ", goal_amount: 100000, status: "published", delivery_date: Date.parse("26/9/2018"))
Project.create(user_id: 1, title:"FinalStraw, the world's first collapsible, reusable straw",description: "We are so excited about this project. We’ve had many sleepless nights making sure that everything is perfect. Still, we can’t foresee every problem so we’re committed to fixing any challenges that may arise during the fulfillment process.", goal_amount: 100000, status: "published", delivery_date: Date.parse("26/9/2018"))
Project.create(user_id: 1, title:"Will Burtin - neglected giant of design",description: "Will Burtin might be the most important designer you’ve never heard of, and like so many visionaries, he was ahead of his time. As the authors of this new book, Will Burtin: Journey to Understanding, state: ‘Will Burtin’s contributions to design can be characterised as important as Albert Einstein’s contributions to science. While his brilliant discoveries in physics gave Einstein his reputation, Burtin’s scientific approach to design should have also given him a revolutionary place in design history.’", goal_amount: 100000, status: "published", delivery_date: Date.parse("26/9/2018"))
Project.create(user_id: 1, title:"Neova | A Unique Connected Ring For Musicians",description: "Neova is a connected ring that identifies extremely natural hand gestures and faithfully interprets each subtlety into musical expression. This MIDI controller can be freely assigned to any effect from your DAW or hardware synthesizer. It results in a purposeful tool enabling new forms of creativity.", goal_amount: 100000, status: "published", delivery_date: Date.parse("26/9/2018"))

#Promises

Promise.create(project_id: 1, price: 39, description: "Our plans include unlimited texting, and calling, starting as low as $9.99 per month with no contracts. We even have a free, Wi-Fi only version of TextNow, available for download on your existing device.", quantity: 10)
Promise.create(project_id: 1, price: 45, description: "Send messages and make calls on your computer or tablet, then access them from your phone while on the go. The free TextNow App is available on iOS, Android, Windows Phone, Windows Desktop, Mac OS X, and online at TextNow.com.", quantity: 20)
Promise.create(project_id: 1, price: 100, description: "Wi-Fi can provide you with added coverage in places where cell networks don't always work - like basements and apartments. No roaming fees for Wi-Fi connections also means you stay connected while travelling the world.", quantity: 35)
Promise.create(project_id: 1, price: 30, description: "Our phones come with a 30-day money-back guarantee and 1 year warranty. If you aren't satisfied just send your phone back for a refund (we'll pay the postage).", quantity: 15)

Promise.create(project_id: 2, price: 39, description: "Our plans include unlimited texting, and calling, starting as low as $9.99 per month with no contracts. We even have a free, Wi-Fi only version of TextNow, available for download on your existing device.", quantity: 10)
Promise.create(project_id: 2, price: 45, description: "Send messages and make calls on your computer or tablet, then access them from your phone while on the go. The free TextNow App is available on iOS, Android, Windows Phone, Windows Desktop, Mac OS X, and online at TextNow.com.", quantity: 20)
Promise.create(project_id: 2, price: 100, description: "Wi-Fi can provide you with added coverage in places where cell networks don't always work - like basements and apartments. No roaming fees for Wi-Fi connections also means you stay connected while travelling the world.", quantity: 35)
Promise.create(project_id: 2, price: 30, description: "Our phones come with a 30-day money-back guarantee and 1 year warranty. If you aren't satisfied just send your phone back for a refund (we'll pay the postage).", quantity: 15)

Promise.create(project_id: 3, price: 39, description: "Our plans include unlimited texting, and calling, starting as low as $9.99 per month with no contracts. We even have a free, Wi-Fi only version of TextNow, available for download on your existing device.", quantity: 10)
Promise.create(project_id: 3, price: 45, description: "Send messages and make calls on your computer or tablet, then access them from your phone while on the go. The free TextNow App is available on iOS, Android, Windows Phone, Windows Desktop, Mac OS X, and online at TextNow.com.", quantity: 20)
Promise.create(project_id: 3, price: 100, description: "Wi-Fi can provide you with added coverage in places where cell networks don't always work - like basements and apartments. No roaming fees for Wi-Fi connections also means you stay connected while travelling the world.", quantity: 35)
Promise.create(project_id: 3, price: 30, description: "Our phones come with a 30-day money-back guarantee and 1 year warranty. If you aren't satisfied just send your phone back for a refund (we'll pay the postage).", quantity: 15)

Promise.create(project_id: 4, price: 39, description: "Our plans include unlimited texting, and calling, starting as low as $9.99 per month with no contracts. We even have a free, Wi-Fi only version of TextNow, available for download on your existing device.", quantity: 10)
Promise.create(project_id: 4, price: 45, description: "Send messages and make calls on your computer or tablet, then access them from your phone while on the go. The free TextNow App is available on iOS, Android, Windows Phone, Windows Desktop, Mac OS X, and online at TextNow.com.", quantity: 20)
Promise.create(project_id: 4, price: 100, description: "Wi-Fi can provide you with added coverage in places where cell networks don't always work - like basements and apartments. No roaming fees for Wi-Fi connections also means you stay connected while travelling the world.", quantity: 35)
Promise.create(project_id: 4, price: 30, description: "Our phones come with a 30-day money-back guarantee and 1 year warranty. If you aren't satisfied just send your phone back for a refund (we'll pay the postage).", quantity: 15)

#Items
Item.create(promise_id: 1, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 1, name: "knife", description: "This knife is very good kill animals")

Item.create(promise_id: 2, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 2, name: "tool", description: "This item is very good for you")

Item.create(promise_id: 3, name: "knife", description: "This knife is very good kill animals")
Item.create(promise_id: 3, name: "tool", description: "This item is very good for you")

Item.create(promise_id: 4, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 4, name: "knife", description: "This knife is very good kill animals")

Item.create(promise_id: 5, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 5, name: "tool", description: "This item is very good for you")

Item.create(promise_id: 6, name: "knife", description: "This knife is very good kill animals")
Item.create(promise_id: 6, name: "tool", description: "This item is very good for you")

Item.create(promise_id: 7, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 7, name: "knife", description: "This knife is very good kill animals")

Item.create(promise_id: 8, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 8, name: "tool", description: "This item is very good for you")

Item.create(promise_id: 9, name: "knife", description: "This knife is very good kill animals")
Item.create(promise_id: 9, name: "tool", description: "This item is very good for you")

Item.create(promise_id: 10, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 10, name: "knife", description: "This knife is very good kill animals")

Item.create(promise_id: 11, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 11, name: "tool", description: "This item is very good for you")

Item.create(promise_id: 12, name: "knife", description: "This knife is very good kill animals")
Item.create(promise_id: 12, name: "tool", description: "This item is very good for you")

Item.create(promise_id: 13, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 13, name: "knife", description: "This knife is very good kill animals")

Item.create(promise_id: 14, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 14, name: "knife", description: "This knife is very good kill animals")

Item.create(promise_id: 15, name: "tool", description: "This item is very good for you")
Item.create(promise_id: 15, name: "tool", description: "This item is very good for you")

Item.create(promise_id: 16, name: "knife", description: "This knife is very good kill animals")
Item.create(promise_id: 16, name: "tool", description: "This item is very good for you")



#MultimediaContents
# Profile Contents
MultimediaContent.create(project_id: nil, profile_id: 1, item_id: nil, image: File.new('app/assets/images/profile.jpg', 'r'))
MultimediaContent.create(project_id: nil, profile_id: 2, item_id: nil, image: File.new('app/assets/images/profile.jpg', 'r'))
MultimediaContent.create(project_id: nil, profile_id: 3, item_id: nil, image: File.new('app/assets/images/profile.jpg', 'r'))
MultimediaContent.create(project_id: nil, profile_id: 4, item_id: nil, image: File.new('app/assets/images/profile.jpg', 'r'))

# Project Contents
MultimediaContent.create(project_id: 1, profile_id: nil, item_id: nil, image: File.new('app/assets/images/project.jpg', 'r'))
MultimediaContent.create(project_id: 2, profile_id: nil, item_id: nil, image: File.new('app/assets/images/project.jpg', 'r'))
MultimediaContent.create(project_id: 3, profile_id: nil, item_id: nil, image: File.new('app/assets/images/project.jpg', 'r'))
MultimediaContent.create(project_id: 4, profile_id: nil, item_id: nil, image: File.new('app/assets/images/project.jpg', 'r'))

#Items Content
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 1, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 2, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 3, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 4, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 5, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 6, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 7, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 8, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 9, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 10, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 11, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 12, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 13, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 14, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 15, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 16, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 17, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 18, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 19, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 20, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 21, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 22, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 23, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 24, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 25, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 26, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 27, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 28, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 29, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 30, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 31, image: File.new('app/assets/images/items.png', 'r'))
MultimediaContent.create(project_id: nil, profile_id: nil, item_id: 32, image: File.new('app/assets/images/items.png', 'r'))

Wishlist.create(user_id:1)
WishlistProject.create(wishlist_id:1,project_id:1)
WishlistProject.create(wishlist_id:1,project_id:2)
WishlistProject.create(wishlist_id:1,project_id:3)

Wishlist.create(user_id:2)
WishlistProject.create(wishlist_id:2,project_id:1)
WishlistProject.create(wishlist_id:2,project_id:2)
WishlistProject.create(wishlist_id:2,project_id:3)
