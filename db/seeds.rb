# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
puts "🗑 Purge"
ActiveStorage::Attachment.all.each { |attachment| attachment.purge }

User.destroy_all
puts 'Seed Destroy'

rayane = User.create!(name: "Rayane", phone_number: '25548445', email: 'rayane@hotmail.com', password: '123456')
artion = User.create!(name: "Artion", phone_number: '25555445', email: 'artion@hotmail.com', password: '123456')
harun_ayhan = User.create!(name: "Harun Ayhan", phone_number: '25555445', email: 'Harunayhan@hotmail.com', password: '123456')
lionel_lilak = User.create!(name: "Lionel Kilak", phone_number: '25555445', email: 'Lionelkilak@hotmail.com', password: '123456')
kraken_nisop = User.create!(name: "Kraken Nisop", phone_number: '25555445', email: 'Krakennisop@hotmail.com', password: '123456')
dany_lian = User.create!(name: "Dany Lian", phone_number: '25555445', email: 'Danylian@hotmail.com', password: '123456')
samuel_nash = User.create!(name: "Samuel Nash", phone_number: '25548445', email: 'Samuelnash@hotmail.com', password: '123456')
mili_botis = User.create!(name: "Mili Botis", phone_number: '25548445', email: 'Milibotis@hotmail.com', password: '123456')
jean_potin = User.create!(name: "Jean Potin", phone_number: '25548445', email: 'Jeanpotin@hotmail.com', password: '123456')
viktor_krazolopotisch = User.create!(name: "Viktor Krazolopotisch", phone_number: '25548445', email: 'Viktorkrazolopotisch@hotmail.com', password: '123456')
felix_norman = User.create!(name: "Felix Norman", phone_number: '25548445', email: 'Felixnorman@hotmail.com', password: '123456')
léa_hart = User.create!(name: "Léa Hart", phone_number: '25548445', email: 'Léahart@hotmail.com', password: '123456')


file = URI.open('https://blog.artsper.com/wp-content/uploads/2020/07/Caspar_David_Friedrich_-_Der_Mo%CC%88nch_am_Meer_-_Google_Art_Project-5-644x362.jpg')
image1 = Artwork.new(name: "Sky gray", upvotes: "3", description: "Gray light crossroads", user_id: artion.id)
image1.photo.attach(io: file, filename: 'Sky gray.jpg', content_type: 'image/png')
image1.save!

file = URI.open('https://images.saatchiart.com/saatchi/1073491/art/4472145/3541985-HSC00001-7.jpg')
image2 = Artwork.new(name: "Colourful landscape", upvotes: "5", description: 'Sunday road trip', user_id: harun_ayhan.id)
image2.photo.attach(io: file, filename: 'Colourful landscape.jpg', content_type: 'image/png')
image2.save!

file = URI.open('https://d5wt70d4gnm1t.cloudfront.net/media/a-s/articles/2055-716352946698/landscape-painting-list-900x450-c.jpg')
image3 = Artwork.new(name: "Sky burn", upvotes: "9", description: 'War of angels', user_id: artion.id)
image3.photo.attach(io: file, filename: 'Sky burn.jpg', content_type: 'image/png')
image3.save!

file = URI.open('https://d16kd6gzalkogb.cloudfront.net/magazine_images/Guido-Borelli-Image-via-Lookingglass-photo-com.jpg')
image4 = Artwork.new(name: "River house", upvotes: "11", description: 'An afternoon in the countryside', user_id: harun_ayhan.id)
image4.photo.attach(io: file, filename: 'River house.jpg', content_type: 'image/png')
image4.save!

file = URI.open('https://www.outdoorpainter.com/wp-content/uploads/2019/06/rural-farm-landscape-paintings-JacalynBeam_STANDTALL.jpg')
image5 = Artwork.new(name: "Rural life", upvotes: "8", description: 'Simplicity of the ordinary', user_id: harun_ayhan.id)
image5.photo.attach(io: file, filename: 'Rural life.jpg', content_type: 'image/png')
image5.save!

file = URI.open('https://trendyartideas.com/wp-content/uploads/2021/01/The-Landscape-Painting-of-Rosanne-Croucher.jpg')
image6 = Artwork.new(name: "Splendour", upvotes: "4", description: 'Splendour natural world', user_id: lionel_lilak.id)
image6.photo.attach(io: file, filename: 'Splendour.jpg', content_type: 'image/png')
image6.save!

file = URI.open('https://s30965.pcdn.co/blogs/the-study/wp-content/uploads/02-1-950x625.jpg')
image7 = Artwork.new(name: "Mona Lisa's twin", upvotes: "15", description: 'Mona Lisa mind waltz', user_id: kraken_nisop.id)
image7.photo.attach(io: file, filename: "Mona Lisa's twin.jpg", content_type: 'image/png')
image7.save!

file = URI.open('https://cryptofrix.com/blog/wp-content/uploads/2020/12/nft-art.jpg')
image8 = Artwork.new(name: "One day on mars", upvotes: "9", description: 'In the shadow of science', user_id: dany_lian.id)
image8.photo.attach(io: file, filename: 'One day on mars.jpg', content_type: 'image/png')
image8.save!

file = URI.open('https://nftcalendar.io/storage/uploads/events/2021/10/f9r6j57BRr9zT3ClADD1w5znYN3E1xeLnDLmdzch.jpg')
image9 = Artwork.new(name: "Face", upvotes: "3", description: 'Print in the skin', user_id: samuel_nash.id)
image9.photo.attach(io: file, filename: 'Face.jpg', content_type: 'image/png')
image9.save!

file = URI.open('https://www.nftsstreet.com/wp-content/uploads/2021/10/Zebrascape_web2-1.jpg')
image10 = Artwork.new(name: "Zebra", upvotes: "15", description: 'Zebra orgy', user_id: mili_botis.id)
image10.photo.attach(io: file, filename: 'Zebra.jpg', content_type: 'image/png')
image10.save!

file = URI.open('https://images.squarespace-cdn.com/content/v1/51d98be2e4b05a25fc200cbc/1625163739480-MPEOKH3JI4UOGQXWA45N/NFT12.png')
image11 = Artwork.new(name: "Interior", upvotes: "12", description: 'Inside the unknown', user_id: jean_potin.id)
image11.photo.attach(io: file, filename: 'Interior.jpg', content_type: 'image/png')
image11.save!

file = URI.open('hhttps://www.coinmarketrade.com/wp-content/uploads/2021/06/Webp.net-resizeimage-5-gID_4.png')
image12 = Artwork.new(name: "Toad", upvotes: "2", description: "The toad's despair", user_id: jean_potin.id)
image12.photo.attach(io: file, filename: 'Toad.jpg', content_type: 'image/png')
image12.save!

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6FJRK3icwSzVeKXpX_munMs7Jhj4j-S9sP_Zjx1IatToaMvCSzMlX1awnqtfMsAvdb8o&usqp=CAU')
image13 = Artwork.new(name: "Spell", upvotes: "7", description: 'The origin of the world', user_id: mili_botis.id)
image13.photo.attach(io: file, filename: 'Spell.jpg', content_type: 'image/png')
image13.save!

file = URI.open('https://tra.img.pmdstatic.net/fit/https.3A.2F.2Fi.2Epmdstatic.2Enet.2Fbin.2F2021.2F10.2F04.2Fb7c0502d-5fd0-4d66-8614-c5acd9516488.2Ejpeg/812x609/background-color/ffffff/quality/70/les-nft-font-decoller-le-marche-de-lart-contemporain.jpg')
image14 = Artwork.new(name: "Spatial Donuts", upvotes: "6", description: 'Spatial donuts for an Ewok', user_id: mili_botis.id)
image14.photo.attach(io: file, filename: 'Spatial Donuts.jpg', content_type: 'image/png')
image14.save!

file = URI.open('https://nftartgallery1.com/wp-content/uploads/2021/05/0111.jpg')
image15 = Artwork.new(name: "Ruins", upvotes: "22", description: 'After the old next', user_id: viktor_krazolopotisch.id)
image15.photo.attach(io: file, filename: 'Ruins.jpg', content_type: 'image/png')
image15.save!

file = URI.open('https://user-images.strikinglycdn.com/res/hrscywv4p/image/upload/c_limit,fl_lossy,h_9000,w_1200,f_auto,q_auto/291949/406878_86844.jpeg')
image16 = Artwork.new(name: "Doomsday", upvotes: "18", description: 'When god sleep the others make war', user_id: viktor_krazolopotisch.id)
image16.photo.attach(io: file, filename: 'Doomsday.jpg', content_type: 'image/png')
image16.save!

file = URI.open('https://www.arweave.net/lL976IKZ8I-I9D77VgDhDJjgNbLoQtnkk4lajLbc-84?ext=JPG')
image17 = Artwork.new(name: "Fish", upvotes: "8", description: 'Underwater feud', user_id: felix_norman.id)
image17.photo.attach(io: file, filename: 'Fish.jpg', content_type: 'image/png')
image17.save!

file = URI.open('https://www.arweave.net/KidAqNiW83zlZ0keiVSrYhpy8JzLNHf3StrNRauV1AM?ext=JPG')
image18 = Artwork.new(name: "Brothers", upvotes: "23", description: "Brothers in depth", user_id: felix_norman.id)
image18.photo.attach(io: file, filename: 'Brothers.jpg', content_type: 'image/png')
image18.save!

file = URI.open('https://i.redd.it/o0frfaowbtq61.jpg')
image19 = Artwork.new(name: "Pink Fusion", upvotes: "7", description: 'A bouquet for a flower', user_id: max)
image19.photo.attach(io: file, filename: 'Pink Fusion.jpg', content_type: 'image/png')
image19.save!

file = URI.open('https://www.nftculture.com/wp-content/uploads/2021/11/taniarivilisnftartist-1160x665.png')
image20 = Artwork.new(name: "Man of Eden", upvotes: "14", description: 'A ride in paradise', user_id: léa_hart.id)
image20.photo.attach(io: file, filename: 'Man of Eden.jpg', content_type: 'image/png')
image20.save!

# file = URI.open('https://lh3.googleusercontent.com/-gLAlYetq2w7chjVKzeGRBXnNhEVPyorA7uVZjNoY0yRCFgulTZcnS1kShn6Mp8iPBP0tCmX_OdsyKbJIZsumDUxceJcHoH0J2gvcg=w1400-k')
# image21 = Artwork.new(name: "Bored Ape Kennel Club #1", upvotes: "" '25', description: '1262x1262', user_id: nico)
# image21.photo.attach(io: file, filename: 'BAKC#1.jpg', content_type: 'image/png')
# image21.save!

# file = URI.open('https://static.nftgo.io/asset/metadata/image/763ffaddbd3368edb78c5f939f20f0e3c69e0a7e8265de19c2eedb6f2ab1d7c1')
# image22 = Artwork.new(name: "Bored Ape Kennel Club #2", artist: '22', description: '1262x1262', user_id: rayane)
# image22.photo.attach(io: file, filename: 'BAKC#2.jpg', content_type: 'image/png')
# image22.save!

# file = URI.open('https://lh3.googleusercontent.com/4w5TMxhGAMG9uMSHIRmAkL4fz3PHBg29mKp_rQdyel_ok12dTvZMSo35NhNjWHOssKOR4y2TWa6vCphqqgCCEdMBMZmUN6K4FMZhTA=w1400-k')
# image23 = Artwork.new(name: "Bored Ape Kennel Club #3", artist: '27', description: '1262x1262', user_id: rayane)
# image23.photo.attach(io: file, filename: 'BAKC#3.jpg', content_type: 'image/png')
# image23.save!

# file = URI.open('https://lh3.googleusercontent.com/v5n1tq0F07__0XcOG8TSxKx1BR8XgwreYRqLe1gBnUh7l7tuNLFX88PBQuH6PuvB_i-jJECNRzi4v-8J7e7-p5C3QftvAmM9SlJ7=w1400-k')
# image24 = Artwork.new(name: "Bored Ape Kennel Club #4", artist: '20', description: '1262x1262', user_id: thomas)
# image24.photo.attach(io: file, filename: 'BAKC#4.jpg', content_type: 'image/png')
# image24.save!

# file = URI.open('https://static.nftgo.io/asset/metadata/image/fba2cceb80ffa7d61aac2852152247914ceab3431ebb3c1c097cad64449c980d')
# image25 = Artwork.new(name: "Bored Ape Kennel Club #5", artist: '26', description: '1262x1262', user_id: thomas)
# image25.photo.attach(io: file, filename: 'BAKC#5.jpg', content_type: 'image/png')
# image25.save!

# file = URI.open('https://static.nftgo.io/asset/metadata/image/86aea1c16edc94c2b100a886fdee14f53a9101e4b134b88bd87df7725c405887')
# image26 = Artwork.new(name: "Bored Ape Kennel Club #6", artist: '28', description: '1262x1262', user_id: thomas)
# image26.photo.attach(io: file, filename: 'BAKC#6.jpg', content_type: 'image/png')
# image26.save!

# file = URI.open('https://static.nftgo.io/asset/metadata/image/ae7a3203245dc42a625b5893c8df89a993e40263cad0d49204e943873a6bd9b9')
# image27 = Artwork.new(name: "Bored Ape Kennel Club #7", artist: '22', description: '1262x1262', user_id: max)
# image27.photo.attach(io: file, filename: 'BAKC#7.jpg', content_type: 'image/png')
# image27.save!

# file = URI.open('https://static.nftgo.io/asset/metadata/image/8d0205c3bc1f11b6adb8c0130039892bad82a6e53d628b02bf66ecdde7f17573')
# image28 = Artwork.new(name: "Bored Ape Kennel Club #8", artist: '23', description: '1262x1262', user_id: max)
# image28.photo.attach(io: file, filename: 'BAKC#8.jpg', content_type: 'image/png')
# image28.save!

# file = URI.open('https://static.nftgo.io/asset/metadata/image/e92558ae50d490ed6e1c94ecf4ac1eec2f71efae93becbecf66713b3d55c36df')
# image29 = Artwork.new(name: "Bored Ape Kennel Club #9", artist: '24', description: '1262x1262', user_id: nico)
# image29.photo.attach(io: file, filename: 'BAKC#9.jpg', content_type: 'image/png')
# image29.save!

# file = URI.open('https://static.nftgo.io/asset/metadata/image/a46f8dab5ed4f22b23319c723a8f5806a8c46495037549b7a58c44153fc3bc52')
# image30 = Artwork.new(name: "Bored Ape Kennel Club #10", artist: '25', description: '1262x1262', user_id: nico)
# image30.photo.attach(io: file, filename: 'BAKC#10.jpg', content_type: 'image/png')
# image30.save!

# file = URI.open('https://lh3.googleusercontent.com/rLvgYgTx5K0uDIyg0bMQX-tEdCjERpXo8gcuOX1vJRT8KPRwFhpAPYgmecCHcbUuXn1p7P47fkAfjqI6zJ4VAgb0szVNxtsJuiI_WQ=w1400-k')
# image31 = Artwork.new(name: "CrypToadz #1", artist: '25', description: '1400x1400', user_id: rayane)
# image31.photo.attach(io: file, filename: 'CToadz#1.jpg', content_type: 'image/png')
# image31.save!

# file = URI.open('https://lh3.googleusercontent.com/1AMIovZi9nH2gUNW8Y8adoqdhdtP7prR5g6nJadaf_W8N-BXXbb5Fq8d-evYEGTYYa-SQCzncthRslpb3JyKwPa2UmoWrwLXlygIlB8=w1400-k')
# image32 = Artwork.new(name: "CrypToadz #2", artist: '12', description: '1400x1400', user_id: thomas)
# image32.photo.attach(io: file, filename: 'CToadz#2.jpg', content_type: 'image/png')
# image32.save!

# file = URI.open('https://lh3.googleusercontent.com/v_ICbid3z8ZsSHX61rhcgnWG5F3xWeARsf0Bg0nWEQ0kL9tWqqqhT7Q3cK6ZJG0fiSsRlcZLKrZ8tm-kMNcaXaU0D8BDxcCGpM3T=w1400-k')
# image33 = Artwork.new(name: "CrypToadz #3", artist: '15', description: '1400x1400', user_id: rayane)
# image33.photo.attach(io: file, filename: 'CToadz#3.jpg', content_type: 'image/png')
# image33.save!

# file = URI.open('https://lh3.googleusercontent.com/UrLF4YhuaUIGfCrHa4yWzSvf3w_J-JbzgaG1XmDOYHIVBhXgSjGfdevrCazcB-yI_GGNZyBWvkCMa223ThQp1-E1lldT3NE16vwAFw=w1400-k')
# image34 = Artwork.new(name: "CrypToadz #4", artist: '18', description: '1400x1400', user_id: nico)
# image34.photo.attach(io: file, filename: 'CToadz#4.jpg', content_type: 'image/png')
# image34.save!

# file = URI.open('https://lh3.googleusercontent.com/2WzlPZhmzcaOCNMcBUE9Sq5jBZr5mE1MkBocIwXXloLAw1cSHa-vzcNK9LQ0mo9yONzXE-UTyfeseMI04ad1J_D4jtDLdOdW9O9b=w1400-k')
# image35 = Artwork.new(name: "CrypToadz #5", artist: '11', description: '1400x1400', user_id: max)
# image35.photo.attach(io: file, filename: 'CToadz#5.jpg', content_type: 'image/png')
# image35.save!

# file = URI.open('https://lh3.googleusercontent.com/lMzK_L6juA3ch6J07sZfEEpsBzWYDRHoyyu0K_wXfHdp_-WmoQLq1Uie1rzvtbhaBVJnt2sXavVOosOjOihI5quNU2SKyWCrIrN0ZQ=w1400-k')
# image36 = Artwork.new(name: "CrypToadz #6", artist: '12', description: '1400x1400', user_id: max)
# image36.photo.attach(io: file, filename: 'CToadz#6.jpg', content_type: 'image/png')
# image36.save!

# file = URI.open('https://lh3.googleusercontent.com/9qPkDx0-no3uw-Gg2CKPFLT_e2DDn7GbERHWdhFhzpeVmHkvlsDkC_DkWbFgpXY89xz7isCub9tPsNfiQru47YhexS-vs-oxs8tlUw=w1400-k')
# image37 = Artwork.new(name: "CrypToadz #7", artist: '25', description: '1400x1400', user: nico)
# image37.photo.attach(io: file, filename: 'CToadz#7.jpg', content_type: 'image/png')
# image37.save!

# file = URI.open('https://lh3.googleusercontent.com/c8dYKhcxYZxS1HPKweb1aEFe64hvlj7JtXkNDUmpaF6GzXOxjdS65PW8uwzyjG4Tp1V3Tp0gTGklGtS68OBtXYUjudestm_gGixV=w1400-k')
# image38 = Artwork.new(name: "CrypToadz #8", artist: '14', description: '1400x1400', user: rayane)
# image38.photo.attach(io: file, filename: 'CToadz#8.jpg', content_type: 'image/png')
# image38.save!

# file = URI.open('https://lh3.googleusercontent.com/-jBkwFUj8klxwbBPBTJUVSrEnXV5U92Ij-0JXILzCr-L0sZIZheMT7l8APko5g-3zL4Q73ZzrdmwDT4vTuQBAOPTqxDzMXXNkC5zBJI=w1400-k')
# image39 = Artwork.new(name: "CrypToadz #9", artist: '12', description: '1400x1400', user: nico)
# image39.photo.attach(io: file, filename: 'CToadz#9.jpg', content_type: 'image/png')
# image39.save!

# file = URI.open('https://static.nftgo.io/asset/metadata/image/179f9a20e149f59aabea72eaf8b4396527d34d90dd820e133a7cedb2fc93f26a')
# image40 = Artwork.new(name: "CrypToadz #10", artist: '20', description: '1400x1400', user: thomas)
# image40.photo.attach(io: file, filename: 'CToadz#10.jpg', content_type: 'image/png')
# image40.save!

# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: rayane, Artwork: image)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: nico, item: image1)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: max, item: image)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: thomas, item: image2)

# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: rayane, item: image, status: 3)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: nico, item: image2, status: 3)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: max, item: image, status: 4)
# Booking.create!(begin_date: Date.today, end_date: Date.today + 1, user: thomas, item: image2, status: 4)

puts 'Seed Created'
