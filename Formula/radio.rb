class Radio < Formula
  desc "Command-line internet radio player"
  homepage "https://github.com/thezeroalpha/radio"
  url "https://github.com/thezeroalpha/radio/archive/v1.1.2.tar.gz"
  sha256 "2431f9db9deb731098889bc1857d05f023dcb23d7d4124513d7206e16b701222"

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
