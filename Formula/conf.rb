class Conf < Formula
  desc "conf - a dotfiles manager written in Perl"
  homepage "https://github.com/thezeroalpha/conf"
  url "https://github.com/thezeroalpha/conf/archive/1.0.1.tar.gz"
  sha256 "efdf90192e213c7382f42d3bd78113e4c1f010a4df4d3eaab52e330b478beaec"

  depends_on "perl"

  def install
    bin.install "conf"
    man1.install "conf.1"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test conf`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
