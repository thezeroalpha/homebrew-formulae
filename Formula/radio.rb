class Radio < Formula
  desc "Command-line internet radio player"
  homepage "https://github.com/thezeroalpha/radio"
  url "https://github.com/thezeroalpha/radio/archive/v1.0.tar.gz"
  sha256 "148c4f79ec4ee6979f452d306f4e2f59ec1fd7a04f581f61a6a4c394c989ed1b"

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
