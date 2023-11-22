# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create({username: 'Bob'})
user2 = User.create({username: 'Dan'})
user3 = User.create({username: 'Greg'})

artwork1 = Artwork.create({title: 'Fancy Cat', image_url: 'https://cdn.pixabay.com/photo/2022/02/22/06/21/cat-7028109_1280.png', artist_id: 1})
artwork2 = Artwork.create({title: 'Sad Dog', image_url: 'https://cdn.pixabay.com/photo/2017/05/26/11/54/dog-2345876_1280.jpg', artist_id: 2})
artwork2 = Artwork.create({title: 'Mona Lisa', image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Mona_Lisa.jpg/1200px-Mona_Lisa.jpg', artist_id: 3})

shared1 = ArtworkShare.create({artwork_id: 1, viewer_id: 3})
shared2 = ArtworkShare.create({artwork_id: 2, viewer_id: 1})
shared3 = ArtworkShare.create({artwork_id: 3, viewer_id: 2})
