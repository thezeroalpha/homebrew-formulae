cask 'spotify-notify' do
  version '0.3.0'
  sha256 'ddf3dad2ee31ebae79313fd63bd23313f5b6cb1ef6475f0c4b100c9dbc0805c3'

  url "https://github.com/nahive/spotify-notify/releases/download/#{version}/Notify.zip"
  name 'Spotify Notify'
  desc 'Rich, native Spotify notifications'
  homepage 'https://github.com/nahive/spotify-notify'

  app 'Notify.app'

  zap trash: [
    "~/Library/Caches/io.nahive.SpotifyNotify",
    "~/Library/Preferences/io.nahive.SpotifyNotify.plist"
  ]
end
