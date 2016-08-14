
# -- Artists --

Artist.delete_all

artists = [
  [ "Gorillaz", "https://yt3.ggpht.com/-UXcxdSDLo08/AAAAAAAAAAI/AAAAAAAAAAA/FP5NbxM7TzU/s900-c-k-no-mo-rj-c0xffffff/photo.jpg"],
  [ "Marisa Monte", "http://dailybeautyandfashion.com/wp-content/uploads/2013/10/marisa_monte.jpg"]
]

artists.each do |name, image_url|
  Artist.create(
  name: name,
  image_url: image_url
  )
end

# -- Songs --

Song.delete_all

artist_songs = {}

artist_songs["Gorillaz"] = [
  ["Orchestral Intro"],
  ["Welcome to the World of the Plastic Beach"],
  ["White Flag"],
  ["Rhinestone Eyes"],
  ["Stylo"],
  ["Superfast Jellyfish"],
  ["Empire Ants"],
  ["Glitter Freeze"],
  ["Some Kind of Nature"],
  ["On Melancholy Hill"]
]

artist_songs["Marisa Monte"] = [
  ["Comida"],
  ["Bem Que Se Quis (E Po' Che Fa')"],
  ["Chocolate"],
  ["Ando Meio Desligado"],
  ["Preciso Me Encontrar"],
  ["O Xote das Meninas"],
  ["Negro Gato"],
  ["Lenda das Sereias, Rainha do Mar"],
  ["South American Way"],
  ["I Heard It Through the Grapevine"]
]

artist_songs.each do |artist, songs|
  songs.each do |song|
    Song.create(
    name: song[0],
    artist_id: Artist.find_by(name: artist).id
    )
  end
end
