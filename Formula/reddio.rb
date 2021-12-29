class Reddio < Formula
  desc "A command-line interface for Reddit written in POSIX sh"
  homepage "https://gitlab.com/aaronNG/reddio"
  head "https://gitlab.com/aaronNG/reddio.git", using: :git

  def install
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  test do
    # Test retrieving one submission from /r/all
    output = shell_output("#{bin}/reddio print -l 1 r/all")
    assert_match /\d+ comments \| submitted .* ago by .* on r\/.*/, output
  end
end
