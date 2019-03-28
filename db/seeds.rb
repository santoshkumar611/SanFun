# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# movies and seasons creation
# MoviesSeason.create([{title: "Movie A",plot:"thriller comedy somethingelse",content_type: MoviesSeason:: MOVIE_TYPE },
# {title: "Movie B",plot:"thriller comedy somethingelse",content_type: MoviesSeason:: MOVIE_TYPE },
# {title: "Movie C",plot:"thriller comedy somethingelse",content_type: MoviesSeason:: MOVIE_TYPE },
# {title: "Movie D",plot:"thriller comedy somethingelse",content_type: MoviesSeason:: MOVIE_TYPE },
# {title: "Season A",plot:"thriller comedy somethingelse",content_type: MoviesSeason:: SEASON_TYPE },
# {title: "Season B",plot:"thriller comedy somethingelse",content_type: MoviesSeason:: SEASON_TYPE },
# {title: "Season C",plot:"thriller comedy somethingelse",content_type: MoviesSeason:: SEASON_TYPE },
# {title: "Season D",plot:"thriller comedy somethingelse",content_type: MoviesSeason:: SEASON_TYPE }])

# user creation 
# User.create([{email:"abc@gmail.com"},{email:"def@gmail.com"}, {email: "joedenly@gmail.com"}])

# #Episode creation

# Episode.create([{episode_number: 1, movies_season_id: MoviesSeason.find_by(title:"Season A").id},
# {episode_number: 2, movies_season_id: MoviesSeason.find_by(title:"Season A").id},
# {episode_number: 3, movies_season_id: MoviesSeason.find_by(title:"Season A").id},
# {episode_number: 4, movies_season_id: MoviesSeason.find_by(title:"Season A").id}
# ])

# Episode.create([{episode_number: 1, movies_season_id: MoviesSeason.find_by(title:"Season B").id},
# {episode_number: 2, movies_season_id: MoviesSeason.find_by(title:"Season B").id},
# {episode_number: 3, movies_season_id: MoviesSeason.find_by(title:"Season B").id},
# {episode_number: 4, movies_season_id: MoviesSeason.find_by(title:"Season B").id}
# ])

# Episode.create([{episode_number: 1, movies_season_id: MoviesSeason.find_by(title:"Season C").id},
# {episode_number: 2, movies_season_id: MoviesSeason.find_by(title:"Season C").id},
# {episode_number: 3, movies_season_id: MoviesSeason.find_by(title:"Season C").id},
# {episode_number: 4, movies_season_id: MoviesSeason.find_by(title:"Season C").id}
# ])

# Episode.create([{episode_number: 1, movies_season_id: MoviesSeason.find_by(title:"Season D").id},
# {episode_number: 2, movies_season_id: MoviesSeason.find_by(title:"Season D").id},
# {episode_number: 3, movies_season_id: MoviesSeason.find_by(title:"Season D").id},
# {episode_number: 4, movies_season_id: MoviesSeason.find_by(title:"Season D").id}
# ])


# Purchase.create([{price: 25, video_quality: Purchase::HD_VIDEO, payment_option: Purchase::CREDIT_PAYMENT, movies_season_id: MoviesSeason.find_by(title:"Movie A").id, user_id:  User.find_by(email: "abc@gmail.com").id},
# {price: 25, video_quality: Purchase::SD_VIDEO, payment_option: Purchase::DEBIT_PAYMENT, movies_season_id: MoviesSeason.find_by(title:"Season A").id, user_id:  User.find_by(email: "abc@gmail.com").id},
# {price: 25, video_quality: Purchase::HD_VIDEO, payment_option: Purchase::ONLINE_PAYMENT, movies_season_id: MoviesSeason.find_by(title:"Movie B").id, user_id:  User.find_by(email: "abc@gmail.com").id},
# {price: 25, video_quality: Purchase::SD_VIDEO, payment_option: Purchase::CREDIT_PAYMENT, movies_season_id: MoviesSeason.find_by(title:"Season B").id, user_id:  User.find_by(email: "abc@gmail.com").id}])





plot =
%(horror thriller enjoyable movie)

(1..100).to_a.each do |index|
  post = MoviesSeason.create(title: "Movie #{index}",content_type: "Season", plot: plot)
  (1..10).to_a.each do |episode_index|
    post.episodes.create(episode_number: episode_index)
  end
  Purchase.create(price: index*10 ,payment_option: "Credit" ,video_quality: "HD", user_id: index%4, movies_season_id: index)
end
