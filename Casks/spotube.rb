cask 'spotube' do
  version '2.4.1'
  sha256 '1707ce61f18d52ea449ed59760ae5411f9729d8664872fd49762c8faeeef983d'

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
