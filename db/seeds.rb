# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.create!(
  first_name: "Andrey",
  last_name: "Azov",
  password: "password",
  email: "andrey@example.com",
  role: "admin",
  remote_image_url: "http://24.media.tumblr.com/9cf39fd2bf880820846d71a922ca15dc/tumblr_n1ni8eVGcv1s7aky5o1_1280.jpg",
  paid: true
)

u1.profile.update_attributes(
  bio: "Building this site",
  age: 30,
  gender: "male"
)

u2 = User.create!(
  first_name: "Gwyneth",
  last_name: "Paltrow",
  password: "password",
  email: "gwyneth@example.com",
  role: "premium_user",
  remote_image_url: "http://24.media.tumblr.com/f85d179602a0f70ea6bedf6156b721b5/tumblr_mkqcjn0xHx1s7aky5o1_r1_1280.jpg",
  paid: true
)

u2.profile.update_attributes(
  bio: "Hey there. I can't guarantee you that we already have a lot in common - but if you read on and find out we do - you should message me! \n I want someone who will be upfront, honest, and I will do the same. \n It would be nice to have someone who would enjoy exploring London and of course trying out local eateries. There's nothing like a good dinner and then going for a walk with a great companion at sunset! I understand that being together is the most important part of a relationship no matter what we are doing (besides communication, of course). \n I'm now looking for a relationship, but I'm not looking to jump into anything without getting to know someone first. I've never been married, so I'm pretty sure it won't kill me to take things slow and make sure we are compatible. \n Anyways I think I wrote enough for now. Anything else feel free to ask or save for the first date ;)",
  age: 30,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "senior web developer",
  programming_languages: "Ruby, PHP, Javascript",
  native_human_language: "English",
  other_human_languages: "French",
  interests: "food, dancing, movies, theatre",
  relationship_status: "divorced",
  children: 1,
  interested_in_age_start: 25,
  interested_in_age_end: 35
)


u3 = User.create!(
  first_name: "Scarlett",
  last_name: "Johansson",
  password: "password",
  email: "scarlett@example.com",
  role: "premium_user",
  remote_image_url: "http://37.media.tumblr.com/77ea19355786597f3f967c72f8ba0c6d/tumblr_n09td4gc9Q1s7aky5o1_1280.jpg",
  paid: true
)

u3.profile.update_attributes(
  bio: "Born and Raised in New York City but reside here in London. I'm very family oriented, and love sports. I spend time hanging out with friends. I'm an easy going person and try to stay clear of any drama. \n My dreams are to flourish in my career and eventually own my own business one day. In the mean time I enjoy working in the web development industry and am lucky to have a job considering the economy these days. \n I'm looking for a man I can vibe with on a spiritual and intellectual level. Someone who can teach me new things and inspire me. Interested? Send me a message and we can go from there.",
  age: 25,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "Web developer at Passion Capital",
  programming_languages: "Ruby, Python, Javascript",
  native_human_language: "English",
  other_human_languages: "Spanish",
  interests: "traveling, movies, reading",
  relationship_status: "single",
  children: 0
)

u4 = User.create!(
  first_name: "Nicole",
  last_name: "Kidman",
  password: "password",
  email: "nicole@example.com",
  role: "premium_user",
  remote_image_url: "http://24.media.tumblr.com/7bd18a20474763993b033dfd1076642c/tumblr_mxedyzB5DB1s7aky5o1_1280.jpg",
  paid: true
)

u4.profile.update_attributes(
  bio: "I just turned 29 years old. Although I was born and raised in Honolulu, Hawaii, I now live in London. I have lived and traveled to many different places. I love the outdoors. My hobbies include traveling, cycling, and videogaming. Computer programming plays a huge part in my life. I have a cat named Jerry. \n I'm unique in that I will not waste time with 'shallow' interactions. I'm only open to meaningful, honest, and exclusive relationships with like minded people. I'm not concerned with having tons of friends. A few good friends is all I need. I know it's hard to get to know someone by just a few photos and a couple of paragraphs, so if you want to get to know me better you should message me.",
  age: 25,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "Database analyst at Facebook",
  programming_languages: "C++, Java, Python, Scala",
  native_human_language: "English",
  other_human_languages: "German",
  interests: "video games, movies, comics, cats",
  relationship_status: "single",
  children: 0
)


u5 = User.create!(
  first_name: "Gwen",
  last_name: "Stefani",
  password: "password",
  email: "gwen@example.com",
  role: "premium_user",
  remote_image_url: "http://24.media.tumblr.com/69d6bed2745168ab43e4282dfe864595/tumblr_mv8fq89cfh1s7aky5o1_1280.jpg",
  paid: true
)

u5.profile.update_attributes(
  bio: "First of all I am not your average gal. There are several things that make me unique. One such thing is that I am a ninja programmer. That got your interest, didn't it. You'll just have to ask if you want to know more about that. Also, I've been told I'm a hopeless romantic...yes we do exist! Currently live and work in London. Love to cycle, jog, and pretty much anything that keeps me active. Also enjoy going to the movies. On the other hand, a night in on the couch cuddled up with that special someone watching a movie would be just as nice too. \n P.S. If I send you a message and you happen to read it, please let me know. Even if you are not interested, just say so. You won't offend me, I promise.",
  age: 27,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "Linux kernel developer at Canonical",
  programming_languages: "C, C++, QML, Java",
  native_human_language: "English",
  interests: "keeping fit, traveling",
  relationship_status: "single",
  children: 0
)

u6 = User.create!(
  first_name: "Kate",
  last_name: "Hudson",
  password: "password",
  email: "kate@example.com",
  role: "premium_user",
  remote_image_url: "http://37.media.tumblr.com/7f28272e6f278c24f9af483cbfbbd84c/tumblr_mv8fh6Upbv1s7aky5o1_1280.jpg",
  paid: true
)

u6.profile.update_attributes(
  bio: "I enjoy spending time with friends and meeting new people. I have an elder brother and a younger sister, and my family means the world to me. \n A perfect night for me is getting my family together and cooking a nice dinner for everyone. I try to always remain positive and be in a good mood. I like to go out and have a good meal over stimulating conversation. I believe in karma and that you should always treat others how you would like to be treated. \n I am looking for a guy that is fun-loving and spontaneous. Some other characteristics I am looking for include: good sense of humor and trustworthiness.",
  age: 28,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "Sofware tester at Uber",
  programming_languages: "Ruby, Python, Javascript, Objective C",
  native_human_language: "English",
  interests: "cooking",
  relationship_status: "single",
  children: 0
)

u7 = User.create!(
  first_name: "Maria",
  last_name: "Sharapova",
  password: "password",
  email: "maria@example.com",
  role: "premium_user",
  remote_image_url: "http://37.media.tumblr.com/47a2c8c524cf7f976699682636745578/tumblr_mpzdn0u5Z51s7aky5o1_1280.jpg",
  paid: true
)

u7.profile.update_attributes(
  bio: "Here's my background check: \n- Height: 1.88 m, weight: 60 kg \n- I work in web development \n- In my free time I like reading, singing and jazz dancing \nIf you've made it this far, I hope the above is good enough because I really don't know what to say. The best advice I ever got was to just be yourself. \n What I'm looking for is someone that wants to take a risk and try and get to know someone for who they are. These dating sites are just around to make people money. These are just words and photographs. The lucky few on this site that are looking for real connections can certainly contact me anytime, I'd love to hear from you.",
  age: 27,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "iOS and Android developer",
  programming_languages: "Objective C, Java, Python",
  native_human_language: "English",
  interests: "fashion, design, stamp collection",
  relationship_status: "single",
  children: 0
)

u8 = User.create!(
  first_name: "Jane",
  last_name: "Doe",
  password: "password",
  email: "jane@example.com",
  role: "premium_user",
  remote_image_url: "http://31.media.tumblr.com/86054abe528ed749459ebb74bda5b0ae/tumblr_muibvt1I2e1s7aky5o1_1280.jpg",
  paid: true
)

u8.profile.update_attributes(
  bio: "You found me. Here I am, just testing the waters to see who is out there. I really enjoy meeting people in the real world but am giving online a try. I'd like to find that beautiful type of relationship where life can be shared on a deeper level. I’m looking for someone who is genuine, intelligent and has a good sense of humor - being genuine is very important for me. An ideal long-term relationship is easy to maintain, involves lively discussions, engages our friends and family around us, contains laughter and a mutual pursuit of our passions. \n I am smart, fun, authentic, affectionate, and love to try new things. I balance professionalism and fun in all of life's adventures. I work hard and am very close with my family and friends. \nWrite me if you have any level of interest... Let's see where it goes.",
  age: 30,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "Sofware tester",
  programming_languages: "C++, Java",
  native_human_language: "English",
  interests: "fashion, design, traveling",
  relationship_status: "single",
  children: 0
)

u9 = User.create!(
  first_name: "Cameron",
  last_name: "Diaz",
  password: "password",
  email: "cameron@example.com",
  role: "premium_user",
  remote_image_url: "http://24.media.tumblr.com/96c147c8ebe8facd5f573db0b9565a0d/tumblr_mpjfsbrBhS1s7aky5o1_1280.jpg",
  paid: true
)

u9.profile.update_attributes(
  bio: "Hello to everyone reading this! I’m new to the online dating scene and have heard good and bad things about it. I never assume anything before finding out all the facts on my own. I am newly single and want to move slowly back into dating. If you are someone who likes to take things slow and use their slow cooker, send me a message! \nMy adventurous side has me watching anything on storm watching and would love to try it with someone who knows what they are doing. It’s always great to learn new things and have a list of things I’d like to accomplish by the end of the year. It would be nice to meet someone who wants to learn new hobbies and interests from each other. I am a programmer by profession and artist by the weekend. I am a self-taught artist who enjoys dabbling in paint, ceramics and anything unusual. \nIf you are a risk-taker and would like to know more, I would enjoy receiving a message from you. Tell me what you find risky. Have a creative week and watch out for that storm!",
  age: 27,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "Programmer",
  programming_languages: "C++, Java, Python",
  native_human_language: "English",
  interests: "art, cooking",
  relationship_status: "single",
  children: 0
)

u10 = User.create!(
  first_name: "Cate",
  last_name: "Blanchett",
  password: "password",
  email: "cate@example.com",
  role: "premium_user",
  remote_image_url: "http://31.media.tumblr.com/dad9b243f609bce60bffc7e8ce2ca1f7/tumblr_mohj4wzQG41s7aky5o1_1280.jpg",
  paid: true
)

u10.profile.update_attributes(
  bio: "I really don’t want to bore you to tears by writing about what a great catch I am. I’m sure you’ve read many dating profiles that have told you they are perfect for you! I’ve always believed that actions speak louder than words don’t you think? It would be great to meet face to face for coffee and see where it goes from there. \nI’m not scared to let you know that I have flaws. I’m a perfectionist and can use a whole package of good paper trying to handwrite something. With the internet world taking over, it’s nice to write an actual handwritten letter to family and friends. I know that recycling is huge so don’t worry, I do use the paper I’ve scrapped for other things! You would think because I’m a perfectionist that I have the perfect job. That, I have not perfected yet. I’m still looking for my true calling and am taking part-time classes at the University. \nIf you are honest and are looking to meet someone for casual dating, make sure to email me. I am looking to date but if it leads to something more, it’s always a good thing. Don’t forget to tell me something about yourself!",
  age: 26,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "Software tester",
  programming_languages: "C++, Java, Objective C",
  native_human_language: "English",
  interests: "art, design, reading",
  relationship_status: "single",
  children: 0
)

u11 = User.create!(
  first_name: "Charlize",
  last_name: "Theron",
  password: "password",
  email: "charlize@example.com",
  role: "premium_user",
  remote_image_url: "http://24.media.tumblr.com/399ab0759904b869f4ff0d8e71c2eed2/tumblr_mmr1anZ0FT1s7aky5o1_1280.jpg",
  paid: true
)

u11.profile.update_attributes(
  bio: "I’m a person who enjoys meeting new people all the time. I love to socialize, embrace life and am a lot of fun if I say so myself! Online dating has been quite the adventure and I am still looking for that special someone. If you are looking for someone genuine, look no further! I don’t have patience for people who pretend to be something they are not. \nI’m honest, forgiving and love to laugh. If you can make me laugh, I would be interested in speaking to you. There are too many people who take life seriously and don’t make time to enjoy the finest pleasures. That would include taking in the outdoors, sitting in front of a fireplace and eating gummy worms on a regular basis for me! \nTell me what your idea of having fun is. I enjoy the weekends out when I am not working in the week and would love to have someone accompany me. It could be an evening of taking in the local comedy scene or local bands. Drop me an email and we’ll chat soon!",
  age: 27,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "User experience designer",
  programming_languages: "Ruby",
  native_human_language: "English",
  interests: "art, design, movies, reading",
  relationship_status: "single",
  children: 0
)

u12 = User.create!(
  first_name: "Sally",
  last_name: "Hawkins",
  password: "password",
  email: "sally@example.com",
  role: "premium_user",
  remote_image_url: "http://37.media.tumblr.com/5c865d9d42f9c85ee2692f995a4e1726/tumblr_mk21holX7N1s7aky5o1_r1_1280.jpg",
  paid: true
)

u12.profile.update_attributes(
  bio: "I believe that there are so many things that are involved in making two people 'a couple.' \n Honesty and mutual respect are so important. \n I am passionate about lots of heart and the ability to share honestly thoughts and dreams. I like strength of character without bullying, a heart that can reach out not only to me, but also to others. \nI appreciate a romantic who can love the one he's with, faults and all. Someone with a 'you plus me equal us' mentality and not 'it's all about me'. \nShouldn't a man be able to trust a woman for his best interests and his heart? \nI look forward to finding the special gifts in the man I'm made for. \nOh? Did I mention...honesty? ",
  age: 25,
  gender: "female",
  interested_in_gender: "men",
  city: "London",
  current_occupation: "Web developer",
  programming_languages: "Ruby, Javascript, Python",
  native_human_language: "English",
  interests: "traveling, movies, reading",
  relationship_status: "single",
  children: 0
)

u13 = User.create!(
  first_name: "David Heinemeier",
  last_name: "Hansson",
  password: "password",
  email: "david@example.com",
  role: "premium_user",
  remote_image_url: "http://24.media.tumblr.com/896fe4329c92f01da9d451ae2e79f8f3/tumblr_n38slq1xVn1s7aky5o1_1280.jpg",
  paid: true
)

u13.profile.update_attributes(
  bio: "I am the creator of Ruby on Rails, founder & CTO at Basecamp (formerly 37signals), best-selling author, public speaker, race-car driver, hobbyist photographer, and a wannabe family man.",
  age: 25,
  gender: "male",
  interested_in_gender: "women",
  city: "London",
  current_occupation: "Arrogant programmer",
  programming_languages: "Ruby, C, C++, Python",
  native_human_language: "English",
  interests: "traveling, movies, reading",
  relationship_status: "single",
  children: 0
)

u14 = User.create!(
  first_name: "Yukihiro",
  last_name: "Matsumoto",
  password: "password",
  email: "yukihiro@example.com",
  role: "premium_user",
  remote_image_url: "http://24.media.tumblr.com/72af116681f27ef609b5b9dd8fc4c58b/tumblr_mkoatz6RkU1s7aky5o2_r1_1280.jpg",
  paid: true
)

u14.profile.update_attributes(
  bio: "Born in Osaka Prefecture (Japan), was raised in Tottori Prefecture from the age of four. Was a self-taught programmer until the end of high school. He graduated with an information science degree from University of Tsukuba. Created Ruby.",
  age: 35,
  gender: "male",
  interested_in_gender: "women",
  city: "London",
  current_occupation: "Arrogant programmer",
  programming_languages: "Ruby, C, C++, Python",
  native_human_language: "English",
  interests: "traveling, movies, reading",
  relationship_status: "single",
  children: 0
)

u15 = User.create!(
  first_name: "Jeremy",
  last_name: "Ashkenas",
  password: "password",
  email: "jeremy@example.com",
  role: "premium_user",
  remote_image_url: "http://31.media.tumblr.com/98caa5f94a61a20a6f09a9542c806051/tumblr_mkz6xfmawF1s7aky5o2_r1_1280.jpg",
  paid: true
)

u15.profile.update_attributes(
  bio: "When I am not on the road taking gorgeous shots of my travels, I doing things like coding for The New York Times and creating CoffeeScript and Backbone.js. Isn't it enough to make you want date me?",
  age: 32,
  gender: "male",
  interested_in_gender: "women",
  city: "London",
  current_occupation: "Awesome programmer",
  programming_languages: "Ruby, Jacascript, CoffeScript, C, C++, Python",
  native_human_language: "English",
  interests: "traveling, photography, movies, reading",
  relationship_status: "single",
  children: 0
)

u16 = User.create!(
  first_name: "Leonardo",
  last_name: "DiCaprio",
  password: "password",
  email: "leonardo@example.com",
  role: "premium_user",
  remote_image_url: "http://24.media.tumblr.com/6e444d4a710e6bd4a31734abe1722798/tumblr_mj7267o4je1s7aky5o2_r1_1280.jpg",
  paid: true
)

u16.profile.update_attributes(
  bio: "Was born in Los Angeles (California) and now reside in London. Have been programming for web since the tender age of 10. Looking for like-minded women for pair-programming and beyond.",
  age: 32,
  gender: "male",
  interested_in_gender: "women",
  city: "London",
  current_occupation: "Freelance web developer",
  programming_languages: "Ruby, Jacascript, CoffeScript, Python",
  native_human_language: "English",
  interests: "traveling, movies, reading",
  relationship_status: "single",
  children: 0
)

u17 = User.create!(
  first_name: "Tom",
  last_name: "Cruise",
  password: "password",
  email: "tom@example.com",
  role: "premium_user",
  remote_image_url: "http://37.media.tumblr.com/abafdc38615d02abc2c7cba2573a59db/tumblr_mv8fkojfkF1s7aky5o1_1280.jpg",
  paid: true
)

u17.profile.update_attributes(
  bio: "I’m a person who enjoys meeting new people all the time. I love to socialize, embrace life and am a lot of fun if I say so myself! Online dating has been quite the adventure and I am still looking for that special someone. If you are looking for someone genuine, look no further! I don’t have patience for people who pretend to be something they are not. \nI’m honest, forgiving and love to laugh. If you can make me laugh, I would be interested in speaking to you. There are too many people who take life seriously and don’t make time to enjoy the finest pleasures. That would include taking in the outdoors, sitting in front of a fireplace and eating gummy worms on a regular basis for me! \nTell me what your idea of having fun is. I enjoy the weekends out when I am not on a coding spree and would love to have someone accompany me. It could be an evening of taking in the local comedy scene or local bands. Drop me an email and we’ll chat soon!",
  age: 32,
  gender: "male",
  interested_in_gender: "women",
  city: "London",
  current_occupation: "Server programmer",
  programming_languages: "Java, Python, Ruby",
  native_human_language: "English",
  interests: "traveling, movies, reading",
  relationship_status: "single",
  children: 0
)

u18 = User.create!(
  first_name: "Tom",
  last_name: "Hanks",
  password: "password",
  email: "tomh@example.com",
  role: "premium_user",
  remote_image_url: "http://37.media.tumblr.com/25134dde45350a1536b5252089f0bcda/tumblr_mv2tg8dzBW1s7aky5o1_1280.jpg",
  paid: true
)

u18.profile.update_attributes(
  bio: "I really don’t want to bore you to tears by writing about what a great catch I am. I’m sure you’ve read many dating profiles that have told you they are perfect for you! I’ve always believed that actions speak louder than words don’t you think? It would be great to meet face to face for coffee and see where it goes from there. \nA few words about myself. I am American-born, have been programming for as long as I can remember myself. I’m a perfectionist and that's why I ended up in sofware testing. \nIf you are honest and are looking to meet someone for casual dating, make sure to email me. I am looking to date but if it leads to something more, it’s always a good thing. Don’t forget to tell me something about yourself!",
  age: 36,
  gender: "male",
  interested_in_gender: "women",
  city: "London",
  current_occupation: "Software tester",
  programming_languages: "Java, Python, Ruby, C, C++",
  native_human_language: "English",
  interests: "traveling, movies, reading",
  relationship_status: "single",
  children: 0
)

u19 = User.create!(
  first_name: "Brad",
  last_name: "Pitt",
  password: "password",
  email: "brad@example.com",
  role: "premium_user",
  remote_image_url: "http://31.media.tumblr.com/37d702013ed44221374b64f85dea376f/tumblr_mk24a5QcX61s7aky5o2_r2_1280.jpg",
  paid: true
)

u19.profile.update_attributes(
  bio: "I am an American actor and film producer. I have received a Golden Globe Award, a Screen Actors Guild Award, and three Academy Award nominations in acting categories, and received two further Academy Award nominations, winning one, for productions of my film production company Plan B Entertainment. Most interestly, I have been described as one of the world's most attractive men, a label for which I have received substantial media attention.",
  age: 50,
  gender: "male",
  interested_in_gender: "women",
  city: "LA",
  current_occupation: "Film producer",
  programming_languages: "Python",
  native_human_language: "English",
  interests: "hanging out with my kids, traveling, tennis",
  relationship_status: "engaged",
  children: 6
)

u20 = User.create!(
  first_name: "George",
  last_name: "Clooney",
  password: "password",
  email: "george@example.com",
  role: "premium_user",
  remote_image_url: "http://24.media.tumblr.com/0a99e30973d3957bad553af26816ef61/tumblr_mj6r8jmivW1s7aky5o2_r1_1280.jpg",
  paid: true
)

u20.profile.update_attributes(
  bio: "I'm an American actor, film director, producer, and screenwriter. I've received three Golden Globe Awards for my work as an actor and two Academy Awards, one for acting and the other for producing. What you might not know about me is that I'm also noted for my political activism and I have served as one of the United Nations Messengers of Peace since 2008.",
  age: 53,
  gender: "male",
  interested_in_gender: "women",
  city: "New York",
  current_occupation: "Film director, producer, actor, screenwriter - full stack",
  programming_languages: "Ruby",
  native_human_language: "English",
  interests: "directing, cooking, reading, traveling",
  relationship_status: "single",
  children: 0
)

u21 = User.create!(
  first_name: "Bruce",
  last_name: "Willis",
  password: "password",
  email: "bruce@example.com",
  role: "premium_user",
  remote_image_url: "http://37.media.tumblr.com/64ed99a0fc43606a3905d70348d97aae/tumblr_mj9dqiRFhA1s7aky5o2_r1_1280.jpg",
  paid: true
)

u21.profile.update_attributes(
  bio: "I'm an American actor, producer, and singer. My career began on the Off-Broadway stage and then in television in the 1980s, most notably as David Addison in Moonlighting (1985â€“89) and has continued both in television and film since, including comedic, dramatic, and action roles.I'm probably best known for my role of John McClane in the Die Hard series, which were mostly critical and uniformly financial successes. In fact, the movies I'm in have grossed about $3b in the North American box office alone.",
  age: 59,
  gender: "male",
  interested_in_gender: "women",
  city: "LA",
  current_occupation: "Actor, producer and singer but I made a code school webpage once",
  programming_languages: "CSS?",
  native_human_language: "English",
  interests: "acting, working out",
  relationship_status: "divorced",
  children: 5
)

u22 = User.create!(
  first_name: "Matt",
  last_name: "Damon",
  password: "password",
  email: "matt@example.com",
  role: "premium_user",
  remote_image_url: "http://37.media.tumblr.com/ae3aba3c0a2af7adff378df79bfcc64b/tumblr_mlkam4rGTL1s7aky5o1_1280.jpg",
  paid: true
)

u22.profile.update_attributes(
  bio: "Hi, I'm an an American actor, voice actor, screenwriter, producer, and philanthropist whose career was launched following the success of the drama film Good Will Hunting which I wrote with my best friend, Ben Affleck. ",
  age: 43,
  gender: "male",
  interested_in_gender: "women",
  city: "London",
  current_occupation: "Actor but dabble in code",
  programming_languages: "Rails",
  native_human_language: "English",
  interests: "acting, cooking, swimming",
  relationship_status: "single",
  children: 3
)




m1 = Message.create!(
  sender_id: u1.id,
  recipient_id: u2.id,
  title: "Welcome to TechDate",
  body: "Hello! Welcome to the TechDate site. We are so glad you decided to join!"
)

# User.all.each { |u| u.confirm! } # that's the console confirmation for devise.