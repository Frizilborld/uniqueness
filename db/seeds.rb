# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts "🗑 Purging"
ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

Artwork.destroy_all
User.destroy_all
puts 'Seed Destroyed'

rayane = User.create!(name: "Rayane", email: 'rayane@hotmail.com', password: '123456')
artion = User.create!(name: "Artion", email: 'artion@hotmail.com', password: '123456')
harun_ayhan = User.create!(name: "Harun Ayhan", email: 'Harunayhan@hotmail.com', password: '123456')
lionel_lilak = User.create!(name: "Lionel Kilak", email: 'Lionelkilak@hotmail.com', password: '123456')
kraken_nisop = User.create!(name: "Kraken Nisop", email: 'Krakennisop@hotmail.com', password: '123456')
dany_lian = User.create!(name: "Dany Lian", email: 'Danylian@hotmail.com', password: '123456')
samuel_nash = User.create!(name: "Samuel Nash", email: 'Samuelnash@hotmail.com', password: '123456')
mili_botis = User.create!(name: "Mili Botis", email: 'Milibotis@hotmail.com', password: '123456')
jean_potin = User.create!(name: "Jean Potin", email: 'Jeanpotin@hotmail.com', password: '123456')
viktor_krazolopotisch = User.create!(name: "Viktor Krazolopotisch", email: 'Viktorkrazolopotisch@hotmail.com', password: '123456')
felix_norman = User.create!(name: "Felix Norman", email: 'Felixnorman@hotmail.com', password: '123456')
léa_hart = User.create!(name: "Léa Hart", email: 'Léahart@hotmail.com', password: '123456')
miss_alsimpson = User.create!(name: "Miss Al Simpson", email: 'missalsimpson@hotmail.com', password: '123456')
jacob_riglin = User.create!(name: "Jacob Riglin", email: 'jacobriglin@hotmail.com', password: '123456')
julia_ponsford = User.create!(name: "Julia K. Ponsford", email: 'juliaponsford@hotmail.com', password: '123456')
anthony_azewkoh = User.create!(name: "Anthony Azewkoh", email: 'anthonyazewkoh@hotmail.com', password: '123456')
pajaritaflora = User.create!(name: "Pajaritaflora", email: 'pajaritaflora@hotmail.com', password: '123456')
raphaellacoste = User.create!(name: "Raphael Lacoste", email: 'raphaellacoste@hotmail.com', password: '123456')



# IMAGES RECONNUES EN text/html A CORRIGER !!!
#  ["Doomsday", "Fish", "Pink Fusion", "Rural life", "Splendour", "Mona Lisa's twin", "Face"]

file = URI.open('https://blog.artsper.com/wp-content/uploads/2020/07/Caspar_David_Friedrich_-_Der_Mo%CC%88nch_am_Meer_-_Google_Art_Project-5-644x362.jpg')
image1 = Artwork.new(name: "Sky gray", description: "Gray light crossroads", user_id: artion.id,
  height: 362,
  width: 644,
  number_of_pixel_in_image: 233128,
  colors: [{"red"=>167, "green"=>177, "blue"=>175, "percentage"=>"48.66", "number_of_pixel"=>113443, "hex"=>"#a7b1af"},
   {"red"=>100, "green"=>115, "blue"=>108, "percentage"=>"32.29", "number_of_pixel"=>75276, "hex"=>"#64736c"},
   {"red"=>21, "green"=>41, "blue"=>31, "percentage"=>"19.05", "number_of_pixel"=>44409, "hex"=>"#15291f"}],
  score: 101
)
image1.photo.attach(io: file, filename: 'Sky gray.jpg', content_type: 'image/png')
image1.upvotes.new(user_id: User.all.sample.id)
image1.upvotes.new(user_id: User.all.sample.id)
image1.upvotes.new(user_id: User.all.sample.id)
image1.upvotes.new(user_id: User.all.sample.id)
image1.save!

file = URI.open('https://images.saatchiart.com/saatchi/1073491/art/4472145/3541985-HSC00001-7.jpg')
image2 = Artwork.new(name: "Colourful landscape", description: 'Sunday road trip', user_id: harun_ayhan.id,
  height: 1099,
  width: 770,
  number_of_pixel_in_image: 846230,
  colors: [{"red"=>67, "green"=>72, "blue"=>52, "percentage"=>"50.21", "number_of_pixel"=>424930, "hex"=>"#434834"},
   {"red"=>185, "green"=>178, "blue"=>105, "percentage"=>"49.79", "number_of_pixel"=>421300, "hex"=>"#b9b269"}],
  score: 129
)
image2.photo.attach(io: file, filename: 'Colourful landscape.jpg', content_type: 'image/png')
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.upvotes.new(user_id: User.all.sample.id)
image2.save!

file = URI.open('https://d5wt70d4gnm1t.cloudfront.net/media/a-s/articles/2055-716352946698/landscape-painting-list-900x450-c.jpg')
image3 = Artwork.new(name: "Sky burn", description: 'War of angels', user_id: artion.id,
  height: 550,
  width: 900,
  number_of_pixel_in_image: 495000,
  colors: [{"red"=>54, "green"=>28, "blue"=>24, "percentage"=>"55.53", "number_of_pixel"=>274852, "hex"=>"#361c18"},
   {"red"=>154, "green"=>67, "blue"=>41, "percentage"=>"30.13", "number_of_pixel"=>149123, "hex"=>"#9a4329"},
    {"red"=>220, "green"=>189, "blue"=>105, "percentage"=>"14.35", "number_of_pixel"=>71025, "hex"=>"#dcbd69"}],
  score: 92
)
image3.photo.attach(io: file, filename: 'Sky burn.jpg', content_type: 'image/png')
image3.save!

file = URI.open('https://d16kd6gzalkogb.cloudfront.net/magazine_images/Guido-Borelli-Image-via-Lookingglass-photo-com.jpg')
image4 = Artwork.new(name: "River house", description: 'An afternoon in the countryside', user_id: harun_ayhan.id,
  height: 800,
  width: 1200,
  number_of_pixel_in_image: 960000,
  colors: [{"red"=>120, "green"=>70, "blue"=>47, "percentage"=>"53.86", "number_of_pixel"=>517038, "hex"=>"#78462f"},
   {"red"=>216, "green"=>171, "blue"=>140, "percentage"=>"46.14", "number_of_pixel"=>442962, "hex"=>"#d8ab8c"}],
  score: 123
)
image4.photo.attach(io: file, filename: 'River house.jpg', content_type: 'image/png')
image4.upvotes.new(user_id: User.all.sample.id)
image4.upvotes.new(user_id: User.all.sample.id)
image4.upvotes.new(user_id: User.all.sample.id)
image4.upvotes.new(user_id: User.all.sample.id)
image4.save!

file = URI.open('https://www.outdoorpainter.com/wp-content/uploads/2019/06/rural-farm-landscape-paintings-JacalynBeam_STANDTALL.jpg')
image5 = Artwork.new(name: "Rural life", description: 'Simplicity of the ordinary', user_id: harun_ayhan.id)
image5.photo.attach(io: file, filename: 'Rural life.jpg', content_type: 'image/png')
image5.save!


file = URI.open('https://s30965.pcdn.co/blogs/the-study/wp-content/uploads/02-1-950x625.jpg')
image7 = Artwork.new(name: "Mona Lisa's twin", description: 'Mona Lisa mind waltz', user_id: kraken_nisop.id,
  score: 113
)

image7.photo.attach(io: file, filename: "Mona Lisa's twin.jpg", content_type: 'image/png')
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.upvotes.new(user_id: User.all.sample.id)
image7.save!

file = URI.open('https://cryptofrix.com/blog/wp-content/uploads/2020/12/nft-art.jpg')
image8 = Artwork.new(name: "One day on mars", description: 'In the shadow of science', user_id: dany_lian.id,
  height: 630,
  width: 1200,
  number_of_pixel_in_image: 756000,
  colors: [{"red"=>95, "green"=>114, "blue"=>90, "percentage"=>"46.37", "number_of_pixel"=>350584, "hex"=>"#5f725a"},
   {"red"=>75, "green"=>72, "blue"=>61, "percentage"=>"27.73", "number_of_pixel"=>209629, "hex"=>"#4b483d"},
    {"red"=>30, "green"=>28, "blue"=>29, "percentage"=>"16.69", "number_of_pixel"=>126174, "hex"=>"#1e1c1d"},
   {"red"=>185, "green"=>138, "blue"=>119, "percentage"=>"9.21", "number_of_pixel"=>69613, "hex"=>"#b98a77"}],
  score: 98
)
image8.photo.attach(io: file, filename: 'One day on mars.jpg', content_type: 'image/png')
image8.upvotes.new(user_id: User.all.sample.id)
image8.upvotes.new(user_id: User.all.sample.id)
image8.save!

file = URI.open('https://nftcalendar.io/storage/uploads/events/2021/10/f9r6j57BRr9zT3ClADD1w5znYN3E1xeLnDLmdzch.jpg')
image9 = Artwork.new(name: "Face", description: 'Print in the skin', user_id: samuel_nash.id)
image9.photo.attach(io: file, filename: 'Face.jpg', content_type: 'image/png')
image9.upvotes.new(user_id: User.all.sample.id)
image9.upvotes.new(user_id: User.all.sample.id)
image9.upvotes.new(user_id: User.all.sample.id)
image9.save!

file = URI.open('https://www.nftsstreet.com/wp-content/uploads/2021/10/Zebrascape_web2-1.jpg')
image10 = Artwork.new(name: "Zebra", description: 'Zebra orgy', user_id: mili_botis.id,
  height: 640,
  width: 800,
  number_of_pixel_in_image: 512000,
  colors: [{"red"=>186, "green"=>202, "blue"=>198, "percentage"=>"36.47", "number_of_pixel"=>186734, "hex"=>"#bacac6"},
   {"red"=>101, "green"=>111, "blue"=>91, "percentage"=>"34.24", "number_of_pixel"=>175286, "hex"=>"#656f5b"},
    {"red"=>134, "green"=>158, "blue"=>69, "percentage"=>"21.26", "number_of_pixel"=>108843, "hex"=>"#869e45"},
   {"red"=>34, "green"=>36, "blue"=>32, "percentage"=>"8.03", "number_of_pixel"=>41137, "hex"=>"#222420"}],
  score: 124
)
image10.photo.attach(io: file, filename: 'Zebra.jpg', content_type: 'image/png')
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.upvotes.new(user_id: User.all.sample.id)
image10.save!

file = URI.open('https://images.squarespace-cdn.com/content/v1/51d98be2e4b05a25fc200cbc/1625163739480-MPEOKH3JI4UOGQXWA45N/NFT12.png')
image11 = Artwork.new(name: "Interior", description: 'Inside the unknown', user_id: jean_potin.id,
  height: 324,
  width: 544,
  number_of_pixel_in_image: 176256,
  colors: [{"red"=>243, "green"=>229, "blue"=>200, "percentage"=>"32.29", "number_of_pixel"=>56916, "hex"=>"#f3e5c8"},
   {"red"=>221, "green"=>173, "blue"=>153, "percentage"=>"28.01", "number_of_pixel"=>49361, "hex"=>"#ddad99"},
   {"red"=>190, "green"=>122, "blue"=>109, "percentage"=>"24.00", "number_of_pixel"=>42304, "hex"=>"#be7a6d"},
   {"red"=>119, "green"=>86, "blue"=>82, "percentage"=>"15.70", "number_of_pixel"=>27675, "hex"=>"#775652"}],
  score: 109
)
image11.photo.attach(io: file, filename: 'Interior.jpg', content_type: 'image/png')
image11.upvotes.new(user_id: User.all.sample.id)
image11.upvotes.new(user_id: User.all.sample.id)
image11.save!


file = URI.open('https://user-images.strikinglycdn.com/res/hrscywv4p/image/upload/c_limit,fl_lossy,h_9000,w_1200,f_auto,q_auto/291949/406878_86844.jpeg')
image16 = Artwork.new(name: "Doomsday", description: 'When god sleep the others make war', user_id: viktor_krazolopotisch.id)
image16.photo.attach(io: file, filename: 'Doomsday.jpg', content_type: 'image/png')
image16.upvotes.new(user_id: User.all.sample.id)
image16.upvotes.new(user_id: User.all.sample.id)
image16.upvotes.new(user_id: User.all.sample.id)
image16.upvotes.new(user_id: User.all.sample.id)
image16.upvotes.new(user_id: User.all.sample.id)
image16.upvotes.new(user_id: User.all.sample.id)
image16.save!

file = URI.open('https://www.arweave.net/lL976IKZ8I-I9D77VgDhDJjgNbLoQtnkk4lajLbc-84?ext=JPG')
image17 = Artwork.new(name: "Fish", description: 'Underwater feud', user_id: felix_norman.id)
image17.photo.attach(io: file, filename: 'Fish.jpg', content_type: 'image/png')
image17.upvotes.new(user_id: User.all.sample.id)
image17.upvotes.new(user_id: User.all.sample.id)
image17.save!

file = URI.open('https://www.arweave.net/KidAqNiW83zlZ0keiVSrYhpy8JzLNHf3StrNRauV1AM?ext=JPG')
image18 = Artwork.new(name: "Brothers", description: "Brothers in depth", user_id: felix_norman.id,
 height: 1328,
  width: 1078,
  number_of_pixel_in_image: 1431584,
  colors: [{"red"=>49, "green"=>35, "blue"=>22, "percentage"=>"50.54", "number_of_pixel"=>723583, "hex"=>"#312316"},
   {"red"=>122, "green"=>103, "blue"=>106, "percentage"=>"29.15", "number_of_pixel"=>417269, "hex"=>"#7a676a"},
    {"red"=>170, "green"=>177, "blue"=>197, "percentage"=>"20.31", "number_of_pixel"=>290732, "hex"=>"#aab1c5"}],
  score: 109
)
image18.photo.attach(io: file, filename: 'Brothers.jpg', content_type: 'image/png')
image18.upvotes.new(user_id: User.all.sample.id)
image18.upvotes.new(user_id: User.all.sample.id)
image18.upvotes.new(user_id: User.all.sample.id)
image18.upvotes.new(user_id: User.all.sample.id)
image18.save!

file = URI.open('https://i.redd.it/o0frfaowbtq61.jpg')
image19 = Artwork.new(name: "Pink Fusion", description: 'A bouquet for a flower', user_id:léa_hart.id)
image19.photo.attach(io: file, filename: 'Pink Fusion.jpg', content_type: 'image/png')
image19.upvotes.new(user_id: User.all.sample.id)
image19.upvotes.new(user_id: User.all.sample.id)
image19.save!


file = URI.open('https://ipfs.pixura.io/ipfs/QmSVLJ9YBUN3v4waqKjqsGZjPdxDEcNUmADC4JM7Yc4idE/old-money-corrupts-blue-eyes-.png')
image21 = Artwork.new(name: "Old Money", description: 'And you forget that Old Money Corrupts the bluest of eyes...', user_id: miss_alsimpson.id,
   score: 113
)
image21.photo.attach(io: file, filename: 'Old Money.png', content_type: 'image/png')
image21.upvotes.new(user_id: User.all.sample.id)
image21.upvotes.new(user_id: User.all.sample.id)
image21.upvotes.new(user_id: User.all.sample.id)
image21.save!


file = URI.open('https://ipfs.pixura.io/ipfs/QmezvnjVZ7nk8d7L2Bd3BZEGc8qPGpdyBJBGFkgdkj96Pm/WEB3.png')
image22 = Artwork.new(name: "WEB 3", description: 'No more censorship. No more gatekeepers. No more permissions.', user_id: miss_alsimpson.id,
   score: 104
)
image22.photo.attach(io: file, filename: 'WEB3.png', content_type: 'image/png')
image22.upvotes.new(user_id: User.all.sample.id)
image22.upvotes.new(user_id: User.all.sample.id)
image22.save!


file = URI.open('https://ipfs.pixura.io/ipfs/QmbjaWyEsrJs76znrmKH3exgS3bYL3EWc5EjnmzcUWydum/BuildingBlocks.jpg')
image27 = Artwork.new(name: "BUILDING BLOCKS", description: 'Perspectives rarely seen by the human eye. ', user_id: jacob_riglin.id,
   score: 129
)
image27.photo.attach(io: file, filename: 'BUILDING BLOCKS.jpg', content_type: 'image/jpg')
image27.upvotes.new(user_id: User.all.sample.id)
image27.save!


file = URI.open('https://ipfs.pixura.io/ipfs/QmPoHP1ba8aKLN1jtuJztibYXDUmhRUttjEbRuXxKrDoW1/petal_me.png')
image28 = Artwork.new(name: "PETAL ME", description: 'A self-portrait alien collage.', user_id: julia_ponsford.id,
   score: 109
)
image28.photo.attach(io: file, filename: 'PETAL ME.jpg', content_type: 'image/jpg')
image28.upvotes.new(user_id: User.all.sample.id)
image28.save!


file = URI.open('https://ipfs.pixura.io/ipfs/QmULVP9JWyiNAKLzjij3W7WrVoosf8uAeQ6eec8fBrbPoW')
image29 = Artwork.new(name: "Strawberry Dreams", description: 'A digital collage.', user_id: julia_ponsford.id,
   score: 112
)
image29.photo.attach(io: file, filename: 'Strawberry Dreams.jpg', content_type: 'image/jpg')
image29.upvotes.new(user_id: User.all.sample.id)
image29.save!


file = URI.open('https://ipfs.pixura.io/ipfs/QmQrgZA4SYoTL5CQX8Rzca4maQRvYUMwSrc9cQz2dDmZxr')
image30 = Artwork.new(name: "Garden anarchy", description: 'When the garden glitches out and anarchy rules!', user_id: julia_ponsford.id,
   score: 107
)
image30.photo.attach(io: file, filename: 'LAnarchie du Jardin.jpg', content_type: 'image/jpg')
image30.upvotes.new(user_id: User.all.sample.id)
image30.save!


file = URI.open('https://ipfs.pixura.io/ipfs/QmUXJx9jZGCxvUpUewn1A7uC9c2jxDv9W6kh5KswWRqjF1')
image31 = Artwork.new(name: "Awakening", description: 'The cells awaken and reach for the sky.', user_id: julia_ponsford.id,
   score: 122
)
image31.photo.attach(io: file, filename: 'Awakening.jpg', content_type: 'image/jpg')
image31.upvotes.new(user_id: User.all.sample.id)
image31.save!



file = URI.open('https://ipfs.pixura.io/ipfs/QmTDvMkZoxvJYCqSoKfAwWuEY6UcihNec9WPusRFFq6zME/the-last-prophet.jpg')
image32 = Artwork.new(name: "The Last Prophet", description: 'Have you wondered, perhaps, why the prophets dont walk the land anymore?', user_id: anthony_azewkoh.id,
  score: 68

)
image32.photo.attach(io: file, filename: 'The Last Prophet.jpg', content_type: 'image/jpg')
image32.upvotes.new(user_id: User.all.sample.id)
image32.save!

file = URI.open('https://ipfs.pixura.io/ipfs/QmPfTKvTWvgGvUmVJ1K7x9KNyNmkA2bjpohTtRzoKATcwE/TheIndigoMan.jpg')
image33 = Artwork.new(name: "The Indigo Man", description: 'One thing is certain: once you see him, you will never forget him.', user_id: anthony_azewkoh.id,
   score: 64

)
image33.photo.attach(io: file, filename: 'The Indigo Man.jpg', content_type: 'image/jpg')
image33.upvotes.new(user_id: User.all.sample.id)
image33.save!

file = URI.open('https://ipfs.pixura.io/ipfs/QmXCnopCavr5p9FmpTcZ4VcpMuVMq6Ny9owoWUUNnExdkx/TheVioletDaughter.jpg')
image34 = Artwork.new(name: "The Violet Daughter", description: 'The Violet Daughter, the last of The Deathless, the last on the spectrum.', user_id: anthony_azewkoh.id,
   score: 61

)
image34.photo.attach(io: file, filename: 'The Violet Daughter.jpg', content_type: 'image/jpg')
image34.upvotes.new(user_id: User.all.sample.id)
image34.save!

file = URI.open('https://ipfs.pixura.io/ipfs/QmQRB7VYL5hrP9TgqycMbGDPZPb2hydozvLTVbwpjG58EG/TheRedMan.jpg')
image35 = Artwork.new(name: "The Red Man", description: 'Something about old age.', user_id: anthony_azewkoh.id,
   score: 64

)
image35.photo.attach(io: file, filename: 'The Red Man.jpg', content_type: 'image/jpg')
image35.upvotes.new(user_id: User.all.sample.id)
image35.save!






file = URI.open('https://ipfs.pixura.io/ipfs/QmYbb912dYjXAuoT6mfdYixmLNp7Za2navBjxKvAYs6iQr/Gems-in-Blue-2000x2000.png')
image36 = Artwork.new(name: "Gems in Blue", description: 'On the water s edge.', user_id: pajaritaflora.id,
   score: 129
)
image36.photo.attach(io: file, filename: 'Gems in Blue.png', content_type: 'image/png')
image36.upvotes.new(user_id: User.all.sample.id)
image36.save!

file = URI.open('https://cdna.artstation.com/p/assets/images/images/031/602/424/large/raphael-lacoste-bg-game-raph.jpg?1604078123')
image37 = Artwork.new(name: "Northern Lights", description: 'AC Valhalla', user_id: raphaellacoste.id,
   score: 133
)
image37.photo.attach(io: file, filename: 'Northern Lights.png', content_type: 'image/png')
image37.upvotes.new(user_id: User.all.sample.id)
image37.save!

file = URI.open('https://cdna.artstation.com/p/assets/images/images/031/599/668/large/raphael-lacoste-conf-ack-env-floe-rlacoste.jpg?1604071893')
image38 = Artwork.new(name: "Floe", description: 'AC Valhalla', user_id: raphaellacoste.id,
   score: 128
)
image38.photo.attach(io: file, filename: 'Floe.png', content_type: 'image/png')
image38.upvotes.new(user_id: User.all.sample.id)
image38.save!

file = URI.open('https://cdnb.artstation.com/p/assets/images/images/023/833/191/large/raphael-lacoste-boat-web.jpg?1580478358')
image39 = Artwork.new(name: "Arrival", description: 'Early morning', user_id: raphaellacoste.id,
   score: 129
)
image39.photo.attach(io: file, filename: 'Arrival.png', content_type: 'image/png')
image39.upvotes.new(user_id: User.all.sample.id)
image39.save!

file = URI.open('https://cdnb.artstation.com/p/assets/images/images/007/883/739/large/raphael-lacoste-ace-ca-env-temple2-raphael.jpg?1509128041')
image40 = Artwork.new(name: "The journey", description: 'Entrance to the temple', user_id: raphaellacoste.id,
   score: 145
)
image40.photo.attach(io: file, filename: 'The journey.png', content_type: 'image/png')
image40.upvotes.new(user_id: User.all.sample.id)
image40.save!


puts 'Seed Created'
