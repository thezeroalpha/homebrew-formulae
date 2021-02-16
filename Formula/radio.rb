class Radio < Formula
  desc "Command-line internet radio player"
  homepage "https://github.com/thezeroalpha/radio"
  url "https://github.com/thezeroalpha/radio/archive/v1.1.0.tar.gz"
  sha256 "a33724932434b2b941510a9538980bca45c286a5434161c774292bdca9c403e5"

  uses_from_macos "ruby" => "2.7"

  def install
    bin.install "radio"
    (etc/"radio").mkpath
    etc.install "urls" => "radio/urls"
  end

  test do
    # TODO: add an actual test
    system "true"
  end
end
