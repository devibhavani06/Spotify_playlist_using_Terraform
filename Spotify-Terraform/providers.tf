 terraform {
  required_providers {
    spotify = {
      source = "conradludgate/spotify"
      version = "0.2.7"
    }
  }
}

provider "spotify" {
  api_key=var.spotify_api_key
}
resource "spotify_playlist" "my_fav_playlist" {
  name = "My favourite Playlist"
  tracks = ["3fVnlF4pGqWI9flVENcT28",
  "14IWkBxGSiWYYzJa2ho5ZM",
  "4rc1WGmRJ2CsHXTmrBu3gH",
  "2RB0HGpFZ3ScPEqC7uCqr3",
  "4swLsRDd6VI5BB1dej03L3",
  "0TvQLMecTE8utzoNmvXRbK"]
}
data "spotify_search_track" "taylor_swift" {
  artist = "Taylor Swift"
}
resource "spotify_playlist" "my_playlist" {
  name = "My Playlist"
  tracks = [data.spotify_search_track.taylor_swift.tracks[0].id,
  data.spotify_search_track.taylor_swift.tracks[1].id,
  data.spotify_search_track.taylor_swift.tracks[2].id,
  data.spotify_search_track.taylor_swift.tracks[3].id,
  data.spotify_search_track.taylor_swift.tracks[4].id]
}
data "spotify_search_track" "justin_bieber" {
  artist = "Justin Bieber"
}
resource "spotify_playlist" "my_playlist_jb" {
  name = "My Playlist Justin Bieber"
  tracks = [data.spotify_search_track.justin_bieber.tracks[0].id,
  data.spotify_search_track.justin_bieber.tracks[1].id,
  data.spotify_search_track.justin_bieber.tracks[2].id,
  data.spotify_search_track.justin_bieber.tracks[4].id,
  data.spotify_search_track.justin_bieber.tracks[5].id]
}