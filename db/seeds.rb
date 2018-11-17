# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
restaurant_images = ['https://www.omnihotels.com/-/media/images/hotels/bospar/restaurants/bospar-omni-parker-house-parkers-restaurant-1170.jpg',
                     'http://imgsrc.baidu.com/image/c0%3Dpixel_huitu%2C0%2C0%2C294%2C40/sign=7c1e1a675efbb2fb20265052263245c8/359b033b5bb5c9ea303e11d9de39b6003af3b33e.jpg',
                     'https://media-cdn.tripadvisor.com/media/photo-s/11/45/43/2c/restaurant-by-night.jpg',
                     'http://pic2bj.shejibao.com/img/2016/07/05/a2d2d14fcc6c4ee60440f5e195f6e919.jpg@!width_800',
                     'http://imgsrc.baidu.com/imgad/pic/item/50da81cb39dbb6fd029d51f20324ab18962b371b.jpg',
                     'http://img.mp.itc.cn/upload/20170209/3102c191eb054b9ba1b58987269ae619_th.jpg',
                     'http://img4.imgtn.bdimg.com/it/u=505699494,4061835038&fm=200&gp=0.jpg',
                     'http://pic2bj.shejibao.com/img/2016/07/02/d49d2278ea076ae061a2b8d7f263c492.jpg@!width_800',
                     'http://imgsrc.baidu.com/image/c0%3Dshijue1%2C0%2C0%2C294%2C40/sign=975e3e09a2d3fd1f2204aa7958274f6a/4034970a304e251f801f49dfad86c9177f3e5328.jpg',
                     'http://imgsrc.baidu.com/imgad/pic/item/d043ad4bd11373f0ecbe2c69ae0f4bfbfaed0446.jpg']
Restaurant.destroy_all

10.times do
  r = Restaurant.create(name: Faker::Coffee.blend_name,
                        address: Faker::Address.street_address,
                        description: Faker::Lorem.paragraph,
                        image: restaurant_images.sample)
  5.times do
    Comment.create(restaurant: r, name: Faker::LordOfTheRings.character,
                   content: Faker::Hipster.sentences(2).join(' '),
                   image: Faker::Fillmurray.image(false, 150, 150))
  end
end
