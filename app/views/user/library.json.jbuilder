json.success true
json.library @library.each do |content|
    json.id content.movies_season.id
    json.title content.movies_season.title
    json.plot content.movies_season.plot
    if !content.movies_season.episodes.empty?
        json.episodes content.movies_season.episodes.each do |episode|
            json.id episode.id
            json.number episode.episode_number
        end
    end
end