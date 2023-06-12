class Czkawka < Formula
  desc 'Multi functional app to find duplicates, empty folders, similar images etc.'
  homepage 'https://github.com/qarmin/czkawka'
  version '6.0.0'
  url "https://github.com/qarmin/czkawka/releases/download/#{version}/mac_czkawka_cli"
  sha256 "c4c51291f5d4808b04d921b37eff7e8ea4ee5ab537a1ee4daf8efcad82d59f53"

  def install
    system 'chmod u+x mac_czkawka_cli'
    bin.install 'mac_czkawka_cli' => 'czkawka'
  end

  test do
    True
  end
end
