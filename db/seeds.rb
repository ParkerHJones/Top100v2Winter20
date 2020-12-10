billboards = ['artists', 'songs']
5.times do 
    artist = Artist.create(
        name: Faker::Name.first_name
    )

5.times do
    song = Song.create(
        title: Faker::Music::PearlJam.musician , 
        genre: Faker::Music.genre
    )

    Billboard.create(
        artist_id: artist.id, 
        song_id: song.id   
    )

end 
end 


puts 'Data seeded'