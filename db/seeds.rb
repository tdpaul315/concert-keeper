7.times do 
   Fan.create(username: Faker::Name.name, age: rand(18..55), vip_guest: [true, false].sample, email: Faker::Internet.email, password: "iluvmykids")
end 

 
Concert.create(artist: "Beyonce", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 1)
Concert.create(artist: "Travis Scott", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 2)
Concert.create(artist: "Ariana Grande", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 3)
Concert.create(artist: "Future & Drake", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 4)
Concert.create(artist: "Migos", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 5)
Concert.create(artist: "Cardi B", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 6)
Concert.create(artist: "NSYNC", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 7)
Concert.create(artist: "Masego", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 1)
Concert.create(artist: "Usher", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 2)
Concert.create(artist: "Rihanna", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 3)
Concert.create(artist: "Sir", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 4)
Concert.create(artist: "Ari Lennox", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id:5)
Concert.create(artist: "Frank Ocean", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 6)
Concert.create(artist: "Britney Spears", date_time: Faker::Time.forward(days: 60,  period: :evening, format: :long), location: Faker::Address.full_address, ticket_price: rand(75..350), alcohol_served: [true, false].sample, fan_id: 7)
