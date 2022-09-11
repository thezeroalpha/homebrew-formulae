cask 'spotube' do
  version '2.4.0'
  sha256 'ae89c0de329d94ec05784e624763e77fb32b7dcc58b646f58d21579b7d4cb387'

  url "https://github.com/KRTirtho/spotube/releases/download/v#{version}/Spotube-macos-x86_64.dmg"
  name 'Spotube'
  desc 'A lightweight free Spotify crossplatform-client which handles playback manually, streams music using Youtube & no Spotify premium account is needed'
  homepage 'https://spotube.netlify.app/'

  app 'spotube.app'

  zap trash: [
    "~/Library/Application Scripts/oss.krtirtho.spotube",
    "~/Library/Containers/oss.krtirtho.spotube",
  ]
end
