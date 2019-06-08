user = User.new(fullname: 'Kazel',
                email: ENV['MY_SEED_EMAIL'],
                password: 'kazelkazel')
user.skip_confirmation!
user.save!

user.rooms.create(home_type: 'Apartment',
                  room_type: 'Private',
                  accommodate: 3,
                  bed_room: 1,
                  bath_room: 2,
                  listing_name: 'Beautiful place in Melbourne',
                  summary: 'This is a nice house.',
                  address: '99 Burwood Hwy, Burwood East',
                  price: 150,
                  active: true)

user.rooms.create(home_type: 'House',
  room_type: 'Private',
  accommodate: 1,
  bed_room: 1,
  bath_room: 3,
  listing_name: 'Beautiful place for your dream',
  summary: 'Spend a unforgettable holiday in the enchanting surroundings of the town of Cisternino',
  address: '1 Pear Ct, Burwood East, VIC, 3151',
  price: 200,
  active: true)