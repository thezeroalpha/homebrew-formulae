class Krokiet < Formula
  desc 'Multi functional app to find duplicates, empty folders, similar images etc.'
  homepage 'https://github.com/qarmin/czkawka'
  version '7.0.0'
  url "https://github.com/qarmin/czkawka/releases/download/#{version}/mac_krokiet"
  sha256 "2c8885c68287776a154926859b9f944f5e888979ff440dc554bf456d0106b1cf"

  def install
    system 'chmod u+x mac_krokiet'
    bin.install 'mac_krokiet' => 'krokiet'
  end

  test do
    True
  end
end
