class Hpanot < Formula
  desc "get your annotations in Markdown from hypothes.is"
  homepage "https://github.com/thezeroalpha/hpanot"
  url "https://github.com/thezeroalpha/hpanot/archive/v1.0.tar.gz"
  sha256 "e8b6605ad0aa9a723a22367bac5ac2c08f857062f9ad1bfd079def03007dd0e2"

  uses_from_macos "ruby" => "2.7"

  def install
    bin.install "hpanot"
  end

  test do
    # TODO: add an actual test
    assert_include shell_output("#{bin}/hpanot -h"), "Usage:"
  end
end
