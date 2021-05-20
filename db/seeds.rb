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

event_1 = Event.create(title: 'Fun Day at the Dog Park', vibe: '1 rad', date: '2021-04-10', time: '2021-04-10 12:00:00', location: '12604 Bluff Creek Dr, Los Angeles, CA 90094', latitude: '33.9752466', longitude: '-118.4156689', description: 'Dog having too much fun, and he could not control himself. Maybe I need to take him to another dog park to see how he is doing, he pooped twice.', category_id: first_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621219888/wzjhdhotbrtbomiqzawe.png', event_id: event_1.id)

event_2 = Event.create(title: 'Dog\'s 10th Birthday!', vibe: '2 good', date: '2021-05-24', time: '2021-05-24 10:00:00', location: 'Frogtown Brewery', latitude: '34.1070217', longitude: '-118.2535555', description: 'One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it\'s a pretty story. Sharing everything with fun, that\'s the way to be. One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, can sound pretty corny.', category_id: first_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621258671/dog_birthday.png', event_id: event_2.id)


#! FOOD
second_category = Category.create(name: 'Food')

event_3 = Event.create(title: 'Birthday Din Din!', vibe: '1 rad', date: '2021-04-25', time: '2021-04-25 18:00:00', location: 'Lawry\'s', latitude: '33.9158844', longitude: '-118.413313', description: 'I love cheese, especially airedale queso. Cheese and biscuits halloumi cauliflower cheese cottage cheese swiss boursin fondue caerphilly. Cow port-salut camembert de normandie macaroni cheese feta who moved my cheese babybel boursin. Red leicester roquefort boursin squirty cheese jarlsberg blue castello caerphilly chalk and cheese. Lancashire.', category_id: second_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621258942/birthday_dinner.png', event_id: event_3.id)

event_4 = Event.create(title: 'Trying this New Taco Truck', vibe: '3 meh', date: '2021-05-06', time: '2021-05-06 14:00:00', location: 'One California Plaza, 300 S Grand Ave, Los Angeles, CA 90071', latitude: '34.0525418', longitude: '-118.25342', description: 'Veggies sunt bona vobis, proinde vos postulo esse magis grape pea sprouts horseradish courgette maize spinach prairie turnip jícama coriander quandong gourd broccoli seakale gumbo. Parsley corn lentil zucchini radicchio maize burdock avocado sea lettuce. Garbanzo tigernut earthnut pea fennel.', category_id: second_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621219968/simwjc6lpzgutsnqea6s.png', event_id: event_4.id)

event_5 = Event.create(title: 'Garlic Noodles', vibe: '4 bad', date: '2021-05-19', time: '2021-05-19 12:00:00', location: '800 W 7th St, Los Angeles, CA 90017', latitude: '34.0486425', longitude: '-118.2612989', description: 'Moonfish, steelhead, lamprey southern flounder tadpole fish sculpin bigeye, blue-redstripe danio collared dogfish. Smalleye squaretail goldfish arowana butterflyfish pipefish wolf-herring jewel tetra, shiner; gibberfish red velvetfish. Thornyhead yellowfin pike threadsail ayu cutlassfish.', category_id: second_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621258675/garlic_noodles.png', event_id: event_5.id)

event_6 = Event.create(title: 'Date night at Mercado', vibe: '5 awful', date: '2021-05-22', time: '2021-05-22 19:00:00', location: '3212A N Sepulveda Blvd, Manhattan Beach, CA 90266', latitude: '33.8992204', longitude: '-118.3962446', description: 'Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit , morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.', category_id: second_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621258942/birthday_dinner.png', event_id: event_6.id)


#! TRAVEL
third_category = Category.create(name: 'Travel')

event_7 = Event.create(title: 'Anniversary Trip, woot!', vibe: '1 rad', date: '2021-05-02', time: '2021-05-02 09:00:00', location: 'Canyonlands National Park', latitude: '38.2256276', longitude: '-110.4596296', description: 'Secondary fermentation degrees plato units of bitterness, cask conditioned ale ibu real ale pint glass craft beer. krausen goblet grainy ibu brewhouse lagering finishing hops. Trappist, black malt chocolate malt balthazar gravity dextrin saccharification trappist final gravity. Aau scotch ale, adjunct. hops bung infusion, cask conditioning pitching malt extract.', category_id: third_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621258679/trip.png', event_id: event_7.id)

event_8 = Event.create(title: 'Sharan\'s Bachelorette Party', vibe: '2 good', date: '2021-05-14', time: '2021-05-14 15:00:00', location: 'Santa Barbara, CA', latitude: '34.3985072', longitude: '-119.8899386', description: 'Pastels Celine leggings leather shorts Saint Laurent beanie street style Fjallraven. Motif skirt strong eyebrows Choupette printed jacket grunge white chambray shirt denim. Colette chunky sole loafers trouser surf pop Prada backpack washed out statement Bag \'N\' Noun silver collar. Rope necklace oversized A.P.C. rose gold knitwear capsule Raf Simons.', category_id: third_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621258740/bachelorette.png', event_id: event_8.id)

#! YOGA
fourth_category = Category.create(name: 'Yoga')

event_9 = Event.create(title: 'Favorite Yoga poses', vibe: '2 good', date: '2021-04-20', time: '2021-04-20 12:00:00', location: 'Denver, CO', latitude: '39.7640005', longitude: '-105.1359767', description: 'Heart-opener mindfulness out of your comfort zone paschimottanasana the crown of your head mudra Om ground down heart-opener. Transform breath of fire exhale, exhale hug in the light within me namaste chaturanga. Ground down exhale bandha exhale. Karma bikram hug in mind exhale heart center balance! Flow expand out, rejuvenate rejuvenate the light within me, exhale equanimity asana. Shoulder integration asana balance all ten toes exhale all ten toes downward-facing dog inhale.', category_id: fourth_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621471452/yoga.png', event_id: event_9.id)

event_10 = Event.create(title: 'Yoga on Sunset Beach', vibe: '1 rad', date: '2021-05-01', time: '2021-05-01 19:00:00', location: 'Ocean Beach, CA', latitude: '37.7772136', longitude: '-122.5092722', description: 'Bacon ipsum dolor amet short ribs brisket venison rump drumstick pig sausage prosciutto chicken spare ribs salami picanha doner. Kevin capicola sausage, buffalo bresaola venison turkey shoulder picanha ham pork tri-tip meatball meatloaf ribeye. Doner spare ribs andouille bacon sausage. Ground round jerky brisket pastrami shank.', category_id: fourth_category.id, user_id: user.id)

Image.create(url: 'https://res.cloudinary.com/dvxp6coec/image/upload/v1621472938/beach_yoga.png', event_id: event_10.id)

puts 'SEEDING SUCCESS!'