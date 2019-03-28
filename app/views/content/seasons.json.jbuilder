json.success true
json.content @content.each do |movie_or_season|
    json.id movie_or_season.id
    json.title movie_or_season.title
    json.plot movie_or_season.plot
    if !movie_or_season.episodes.empty?
        json.episodes movie_or_season.episodes.each do |episode|
            json.id episode.id
            json.number episode.episode_number
        end
    end
end