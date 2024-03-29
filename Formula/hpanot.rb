class Hpanot < Formula
  desc 'get your annotations in Markdown from hypothes.is'
  homepage 'https://github.com/thezeroalpha/hpanot'
  url 'https://github.com/thezeroalpha/hpanot/archive/v1.0.1.tar.gz'
  sha256 '1854b1a7c488c9e606f2d8a13b4ea35ffc6c7f9499c9523f77a300229efe2665'
  head 'https://github.com/thezeroalpha/hpanot.git', branch: 'master'

  uses_from_macos 'ruby' => '2.7'

  def install
    bin.install 'hpanot'
  end

  test do
    # TODO: add an actual test
    assert_includes shell_output("#{bin}/hpanot -h"), 'Usage:'
  end
end
