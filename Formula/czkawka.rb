class Czkawka < Formula
  desc 'Multi functional app to find duplicates, empty folders, similar images etc.'
  homepage 'https://github.com/qarmin/czkawka'
  version '7.0.0'
  url "https://github.com/qarmin/czkawka/releases/download/#{version}/mac_czkawka_cli"
  sha256 "cf21886143c072d14a9987414350a3c7f53e84143d45bb627f236cb63b4a34da"

  def install
    system 'chmod u+x mac_czkawka_cli'
    bin.install 'mac_czkawka_cli' => 'czkawka'
  end

  test do
    True
  end
end
