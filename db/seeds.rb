# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Event.destroy_all
Image.destroy_all
User.destroy_all

user = User.create(username: 'fentybit', password: 'fentybit', firstname: 'Fenty', lastname:'Hall')

#! DOG 
first_category = Category.create(name: 'Dog')

Event.create(title: 'Fun Day at the Dog Park', vibe: '1 rad', date: '2021-05-10', time: '2021-05-10 12:00:00', location: '12604 Bluff Creek Dr, Los Angeles, CA 90094', description: 'Dog having too much fun, and he could not control himself. Maybe I need to take him to another dUser.og park to see how he is doing, he pooped twice.', category_id: first_category.id, user_id: user.id)

Event.create(title: 'Dog\'s 10th Birthday!', vibe: '2 good', date: '2021-05-24', time: '2021-05-24 10:00:00', location: 'Frogtown Brewery', description: 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it\'s a pretty story. Sharing everything with fun, that\'s the way to be. One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, can sound pretty corny.', category_id: first_category.id, user_id: user.id)

#! FOOD
second_category = Category.create(name: 'Food')

Event.create(title: 'Birthday Din Din!', vibe: '1 rad', date: '2021-05-01', time: '2021-05-01 18:00:00', location: 'Lawry\'s', description: 'I love cheese, especially airedale queso. Cheese and biscuits halloumi cauliflower cheese cottage cheese swiss boursin fondue caerphilly. Cow port-salut camembert de normandie macaroni cheese feta who moved my cheese babybel boursin. Red leicester roquefort boursin squirty cheese jarlsberg blue castello caerphilly chalk and cheese. Lancashire.', category_id: second_category.id, user_id: user.id)

Event.create(title: 'Trying this New Taco Truck', vibe: '3 meh', date: '2021-05-06', time: '2021-05-06 14:00:00', location: 'One California Plaza, 300 S Grand Ave, Los Angeles, CA 90071', description: 'Veggies sunt bona vobis, proinde vos postulo esse magis grape pea sprouts horseradish courgette maize spinach prairie turnip jícama coriander quandong gourd broccoli seakale gumbo. Parsley corn lentil zucchini radicchio maize burdock avocado sea lettuce. Garbanzo tigernut earthnut pea fennel.', category_id: second_category.id, user_id: user.id)

Event.create(title: 'Garlic Noodles', vibe: '4 bad', date: '2021-05-19', time: '2021-05-19 12:00:00', location: '800 W 7th St, Los Angeles, CA 90017', description: 'Moonfish, steelhead, lamprey southern flounder tadpole fish sculpin bigeye, blue-redstripe danio collared dogfish. Smalleye squaretail goldfish arowana butterflyfish pipefish wolf-herring jewel tetra, shiner; gibberfish red velvetfish. Thornyhead yellowfin pike threadsail ayu cutlassfish.', category_id: second_category.id, user_id: user.id)

Event.create(title: 'Date night at Mercado', vibe: '5 awful', date: '2021-05-21', time: '2021-05-21 19:00:00', location: '3212A N Sepulveda Blvd, Manhattan Beach, CA 90266', description: 'Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit , morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.', category_id: second_category.id, user_id: user.id)

#! TRAVEL
third_category = Category.create(name: 'Travel')

Event.create(title: 'Anniversary Trip, woot!', vibe: '1 rad', date: '2021-05-03', time: '2021-05-03 09:00:00', location: 'San Diego, CA', description: 'Secondary fermentation degrees plato units of bitterness, cask conditioned ale ibu real ale pint glass craft beer. krausen goblet grainy ibu brewhouse lagering finishing hops. Trappist, black malt chocolate malt balthazar gravity dextrin saccharification trappist final gravity. Aau scotch ale, adjunct. hops bung infusion, cask conditioning pitching malt extract.', category_id: third_category.id, user_id: user.id)

Event.create(title: 'Sharan\'s Bachelorette Party', vibe: '2 good', date: '2021-05-14', time: '2021-05-14 15:00:00', location: 'Santa Barbara, CA', description: 'Pastels Celine leggings leather shorts Saint Laurent beanie street style Fjallraven. Motif skirt strong eyebrows Choupette printed jacket grunge white chambray shirt denim. Colette chunky sole loafers trouser surf pop Prada backpack washed out statement Bag \'N\' Noun silver collar. Rope necklace oversized A.P.C. rose gold knitwear capsule Raf Simons.', category_id: third_category.id, user_id: user.id)


puts 'SEEDING SUCCESS!'