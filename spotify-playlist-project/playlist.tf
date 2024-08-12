resource "spotify_playlist" "playlist" {
  name        = "playlist using terraform"
  description = "My playlist is so awesome"
  public      = false

  tracks = flatten([
    data.spotify_search_track.ariana_grande.tracks[*].id,
  ])
}

data "spotify_search_track" "ariana_grande" {
  artist = "Arijit Singh"
  limit = 5
}