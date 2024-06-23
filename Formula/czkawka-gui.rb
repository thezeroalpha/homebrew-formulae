class CzkawkaGui < Formula
  desc 'Multi functional app to find duplicates, empty folders, similar images etc.'
  homepage 'https://github.com/qarmin/czkawka'
  version '7.0.0'
  url "https://github.com/qarmin/czkawka/releases/download/#{version}/mac_czkawka_gui"
  sha256 "125836519452e6276b5520054b9a95d07ac2645b91c8df08c2e92fadf51f5cb2"

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
