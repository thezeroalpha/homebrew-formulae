class Radio < Formula
  desc "Command-line internet radio player"
  homepage "https://github.com/thezeroalpha/radio"
  url "https://github.com/thezeroalpha/radio/archive/v1.1.1.tar.gz"
  sha256 "57e36ff00ac8726dd53a7b550aa4aae5749521074205b97cda1bd0bfec7c72a7"

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
