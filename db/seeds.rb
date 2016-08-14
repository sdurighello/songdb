
# -- Delete any existing seeded data

Song.delete_all
Artist.delete_all

# -- Artists --

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

artist_songs = {}

artist_songs["Gorillaz"] = [
  ["Orchestral Intro", "http://placehold.it/140x100"],
  ["Welcome to the World of the Plastic Beach", "http://placehold.it/140x100"],
  ["White Flag", "http://placehold.it/140x100"],
  ["Rhinestone Eyes", "http://placehold.it/140x100"],
  ["Stylo", "http://placehold.it/140x100"],
  ["Superfast Jellyfish", "http://placehold.it/140x100"],
  ["Empire Ants", "http://placehold.it/140x100"],
  ["Glitter Freeze", "http://placehold.it/140x100"],
  ["Some Kind of Nature", "http://placehold.it/140x100"],
  ["On Melancholy Hill", "http://placehold.it/140x100"]
]

artist_songs["Marisa Monte"] = [
  ["Comida", "http://placehold.it/140x100"],
  ["Bem Que Se Quis", "http://placehold.it/140x100"],
  ["Chocolate", "http://placehold.it/140x100"],
  ["Ando Meio Desligado", "http://placehold.it/140x100"],
  ["Preciso Me Encontrar", "http://placehold.it/140x100"],
  ["O Xote das Meninas", "http://placehold.it/140x100"],
  ["Negro Gato", "http://placehold.it/140x100"],
  ["Lenda das Sereias, Rainha do Mar", "http://placehold.it/140x100"],
  ["South American Way", "http://placehold.it/140x100"],
  ["I Heard It Through the Grapevine", "http://placehold.it/140x100"]
]

artist_songs.each do |artist_name, songs|
  artist = Artist.find_by(name: artist_name)
  songs.each do |name, image_url|
    Song.create(
    name: name,
    artist_id: artist.id,
    image_url: image_url
    )
  end
end
