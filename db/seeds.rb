# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Instrument.destroy_all

puts "Creating instruments..."
guitar = {
  name: "ESP LTD Deluxe EC-1000VB Electric Guitar, Vintage Black", price: 100, description: "About this item
  Designed to offer the tone, feel, looks, and quality that professional musicians need, while still being affordable
  Consistently one of ESP's most popular guitars due to its combination of incredible looks and great performance
  Offers a vintage looking body/neck/headstock binding and gold hardware and includes premier components
  Includes LTD locking tuners, Tonepros locking TOM bridge and tailpiece, and the aggression of active EMG 81/60 pickups
  Also offers set-thru construction with a mahogany body, 3 pc. mahogany neck, and 24-fret Macassar ebony fingerboard",
  image: "https://i.imgur.com/1juDIMC.jpeg"
}
cello =  {
  name: "Cecilio Cello Instrument - Mendini Full Size Cellos for Kids & Adults w/ Bow, Case and Stringsac",
  price: 100, description: "About this item
  GREAT STUDENT & BEGINNERS CELLO: The Cecilio CCO-100 cello instrument kit is an ideal beginner music instrument for
  any student, young or old, who has dreams of playing music. The set includes all the necessities to start learning how
  to play.
  ELEGANT DESIGN: As beautiful as most stringed music instruments for adults and kids, this cello has a crack-proof
  spruce top; maple back, neck and sides with a beautiful natural finish. An elegant classical instrument
  that products a pristine sound.
  CELLO ACCESSORIES KIT INCLUDES: This 4/4 cello is outfitted with a padded lightweight carrying soft case with pockets
  and adjustable backpack straps, a Brazilwood bow, cello stand, rosin cake, and an extra set of cello strings.
  THE RIGHT SIZE: When choosing an acoustic cello for adults and kids, it's extremely important to find the proper size.
  The player's height and hand size are most important. Refer to our recommended ages and sizes on the the table below
  for help. HANDLE WITH CARE: The cello 4/4, like most band & orchestra musical instruments, is delicate.
  Please note the bridge will not be setup to avoid damage during shipping. NOTE: Tuning pegs must be handled with care
  and pushed in when adjusting.",
  image: "https://i.imgur.com/JaQF5yu.jpeg"
}

[guitar, cello].each do |attributes|
  instrument = Instrument.create!(attributes)
  puts "Created #{instrument.name}"
end
puts "Finished!"
