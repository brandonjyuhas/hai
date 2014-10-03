# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{
		email: "brandon@email.com",
	 	username: "The Great Brandino",
	 	encrypted_password: "Blah",
	 	profile_photo:"http://news.bbcimg.co.uk/media/images/59678000/jpg/_59678991_profile_kimjongun_afp2_crop142914682.jpg",
	 	personal_website: "www.brandon.com",
	 	bio: "I'm the best" },
	{
		email: "pam@hai.com",
		username: "Pam!",
		encrypted_password: "WOW",
		profile_photo:"http://www.zemwallpaper.com/wp-content/uploads/2014/04/cute_little_baby_facebook_profile_picture.jpg",
		personal_website: "www.pam.com",
		bio: "PAMPAMPAMPAM" },
	{
		email: "paul@saul.com",
		username: "Jo Shmo",
		encrypted_password: "paulie",
		profile_photo:"http://3.bp.blogspot.com/-nmRWD1XwwFk/UHqHP8oL0RI/AAAAAAAAAdE/qomLDFBFnZ8/s400/Loser.jpg",
		personal_website: "www.lameo.com",
		bio: "I'm skrillex." },
	{
		email: "Mandy@hai.nato",
		username: "mandy",
		encrypted_password: "password",
		profile_photo:"http://fc00.deviantart.net/fs70/f/2012/040/e/6/the_grim_adventures_with_billy_and_mandy_by_nessi17-d4p642h.jpg",
		personal_website: "www.mandywebdev.com",
		bio: "I'm Mandy!!"},
	{
		email: "Jake@bestfrontend.ever",
		username: "jakejakejake",
		encrypted_password: "fuckblue",
		profile_photo:"http://granitenet.com.au/assets/images/Sjohnstone/no%20symbol.jpg",
		personal_website: "www.a$aprockygroupie.com",
		bio: "Hate blue. Love A$AP. Jake Out."},
	{
		email: "ansoo@chang.com",
		username: "the master",
		encrypted_password: "bestEver",
		profile_photo:"http://jkhgroup.com/NYCLSRW2013.jpg",
		personal_website: "ansoossite.se",
		bio: "I'm literally the best"},
	{
		email: "sean@ga.co",
		username: "recessionsfan",
		encrypted_password: "ilovecorgis",
		profile_photo:"http://petradioshow.com/wp-content/uploads/2013/12/corg4.jpg",
		personal_website: "okcorgi.com",
		bio: "I'm a big fan of corgis dressed up as people and the bar recessions."
	}
	])

followers = Follow.create([
	{
		follower_id: 1,
		followed_id: 2
	},
	{
		follower_id: 1,
		followed_id: 3
	},
	{
		follower_id: 1,
		followed_id: 5
	},
	{
		follower_id: 1,
		followed_id: 6
	},
	{
		follower_id: 2,
		followed_id: 1
	},
	{
		follower_id: 2,
		followed_id: 5
	},
	{
		follower_id: 3,
		followed_id: 1
	},
	{
		follower_id: 3,
		followed_id: 7
	},
	{
		follower_id: 3,
		followed_id: 5
	},
	{
		follower_id: 4,
		followed_id: 2
	},
	{
		follower_id: 4,
		followed_id: 3
	},
	{
		follower_id: 4,
		followed_id: 5
	},
	{
		follower_id: 4,
		followed_id: 7
	},
	{
		follower_id: 5,
		followed_id: 1
	},
	{
		follower_id: 5,
		followed_id: 2
	},
	{
		follower_id: 5,
		followed_id: 3
	},
	{
		follower_id: 5,
		followed_id: 6
	},
	{
		follower_id: 5,
		followed_id: 7
	},
	{
		follower_id: 6,
		followed_id: 1
	},
	{
		follower_id: 6,
		followed_id: 2
	},
	{
		follower_id: 6,
		followed_id: 4
	},
	{
		follower_id: 6,
		followed_id: 5
	},
	{
		follower_id: 6,
		followed_id: 7
	},
	{
		follower_id: 7,
		followed_id: 3
	},
	{
		follower_id: 7,
		followed_id: 4
	},
	{
		follower_id: 7,
		followed_id: 5
	},
	{
		follower_id: 7,
		followed_id: 6
	}

	])

posts = Post.create([
	{
		user_id: 1,
		body: "I'm Bumblebee. No, like, I -am- a transformer. STEP UP."
	},
	{
	    user_id: 1,
		body: "I'm secretly a hipster. No body knows. Infiltration successful."
	},
	{
	    user_id: 2,
		body: "I only like Kanye. The rest be playa haters."
	},
	{
		user_id: 2,
		body: "I literally know nothing about fasion and this is a lie."
	},
	{
		user_id: 3,
		body: "Please buy my new book, coming this Fall, titled 'The Weather Up There: A Story of Height and Fear.'"
	},
	{
		user_id: 3,
		body: "Brandon and I are starring in Marvel's new film, 'Two Dudes in a Bus of the Galaxy'"
	},
	{
		user_id: 4,
		body: "Traveling the world is my thing. Grab a kite, let's go on a journey."
	},
	{
		user_id: 4,
		body: "I LIKE BARNEY'S MUSHROOMS"
	},
	{
		user_id: 5,
		body: "I think the color blue is for assholes. And yes-- it's a total cop out to say 'But my eye's are blue!' Bitch it's called contacts YOLO"
	},
	{
		user_id: 5,
		body: "I'm coming out with a new gameshow called 'So You Think You Have Style?' where I berate people for money."
	},
	{
		user_id: 6,
	    body: "As a Harvard Graduate, I'm most likely to lose my shit and raise my voice from 'whisper' to 'inside voice'."
	},
	{
		user_id: 6,
	    body: "Whether or not I get angry is one of life's great mysteries, right after the Bermuda Triangle."
	},
	{
		user_id: 7,
		body: "Ladies-- the way to my heart is done in three easy steps! 1) Realize SCOPE is a thing and I will yell it randomly at night. I just love SCOPE"
	},
	{
		user_id: 7,
	    body: "2) Corgi's are my SHIT, but I don't own one. *HINTHINT*
	3) If I eat Five Guys twice a week, I'll gain 800lbs. Fact."}
	])

posts.each do |x|
	x.update_attribute :created_at, (rand*15).days.ago
end


