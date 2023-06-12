class CzkawkaGui < Formula
  desc 'Multi functional app to find duplicates, empty folders, similar images etc.'
  homepage 'https://github.com/qarmin/czkawka'
  version '6.0.0'
  url "https://github.com/qarmin/czkawka/releases/download/#{version}/mac_czkawka_gui"
  sha256 "3d32505a56f1183164ba8fbd7a568ff32c433de502de0a4ce9359e1ad35158b5"

  depends_on "gtk4"
  depends_on "adwaita-icon-theme"
  depends_on "ffmpeg"
  depends_on "librsvg"
  depends_on "libheif"
  depends_on "pkg-config"
  depends_on "libtiff"

  def install
    system 'chmod u+x mac_czkawka_gui'
    bin.install 'mac_czkawka_gui' => 'czkawka-gui'
  end

  test do
    True
  end
end
