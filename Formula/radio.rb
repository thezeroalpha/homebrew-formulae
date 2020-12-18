class Radio < Formula
  desc "Command-line internet radio player"
  homepage "https://github.com/thezeroalpha/radio"
  url "https://github.com/thezeroalpha/radio/archive/v1.0.1.tar.gz"
  sha256 "1a0a0a625e98e450a42707b1f39b1bd71f9ef6b3cdaf41dc5ff130ef341cfcc7"

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
