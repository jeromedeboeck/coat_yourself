# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Coat.destroy_all
Category.destroy_all
User.destroy_all

require 'faker'

5.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "123456", location: Faker::Address.full_address)
end

Category.create(name: "Festival", photo: "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533655236/09-Flow-Festival-Branding-Pattern-Bond-on-BPO.jpg")
Category.create(name: "Army", photo: "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533655051/2ad92f03deeca4aa5e8b2fb27e8de16b.jpg")
Category.create(name: "Christmas", photo: "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533655433/christmas_pattern_2_by_anitess-d8b1udw.jpg")
Category.create(name: "Animal", photo: "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533655763/800px_COLOURBOX13351686.jpg")

animal_jackets = [
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533731808/snake-skin-jacket-blazer_146c0d52-7c9e-47a7-b47a-82adfe201ac4_300x300.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533731619/Red_Fox_Fur_Jacket_with_Collar_30_length_2760.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533731730/31NSoEzp6JL.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533731669/large_shrimps-black-white-esme-cow-print-fur-coat.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533731571/s177255479116254617_p105_i1_w382.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533731458/workaholics-bear-coat.main.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533731513/kenzo-kids-girls-tiger-print-coat-179809-a1255493729afc6f3c33fb51838db35c77bd81ae.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533731427/91eCHzGHIjL._SY445_.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533731397/Burberry-trench-coat-alligator.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533730983/1489373020346095447.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533730950/Printed-Long-Sleeved-jacket-Lovers-Coat-Cute-Cartoon-Hoodie-Hoody-Giraffe-Modeling-Adult-Cotton-Animal-Women.jpg_640x640.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533730907/0000000030000562_01.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893495/03fc672daf89ae8d825175e787297431--golden-tiger-sf.jpg",
]

festival_jackets = [
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533892044/Festifal/Gypsy-Soul-Oleg-Burn.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533892063/Festifal/j5gmqz-l-610x610-coat-festival_style-sequin-sequins-pastel-coachella-burning_man_coat-boho_chic-future-rainbow-fake_fur-faux_fur_jacket-faux_fur_coat-festival-festival-burning_man-boho-boho_chic_fa.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533892071/Festifal/burning-man-fur-coat.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533892294/Festifal/images.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533892105/Festifal/7cd14b79d208b200b6b5fd4aec84d652.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533892113/Festifal/s-l300.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893086/images.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893136/m_5a323017522b456b96018d2b.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893171/bm-fur-coat-copy.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893305/images.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893394/images.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893516/images.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893595/878f9588c38000012fd01aecc03feb39.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893632/il_340x270.1563226798_mpyx.jpg",
  "https://res.cloudinary.com/dzcwxfufs/image/upload/v1533893698/il_340x270.1260229588_fgxr.jpg",
]


User.all.each do |user|
  3.times do
    coat = Coat.new(category: Category.all.first, price: rand(5..100), size: ["small", "Medium", "Large"].sample, user: User.all.sample, name: Faker::Pokemon.move)
    coat.remote_photo_url = festival_jackets.sample
    coat.save
  end
end

User.all.each do |user|
  3.times do
    coat = Coat.new(category: Category.all.last, price: rand(5..100), size: ["small", "Medium", "Large"].sample, user: User.all.sample, name: Faker::Pokemon.move)
    coat.remote_photo_url = animal_jackets.sample
    coat.save
  end
end
