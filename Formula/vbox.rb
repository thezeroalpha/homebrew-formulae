class Vbox < Formula
  desc "vbox lets you manipulate (start, stop, pause, suspend) VirtualBox VMs, and change shared folders."
  homepage "https://git.alex.balgavy.eu/vbox"
  url "https://github.com/thezeroalpha/vbox/archive/v1.0.tar.gz"
  sha256 "557a76ceb4fa4f1b61d9231cd12c39fca337659a799c2aefb257334364cc5d23"

  def install
    bin.install "vbox"
    man1.install "vbox.1.man" => "vbox.1"
    zsh_completion.install "_vbox"
  end

  test do
    # TODO need a better test
    true
  end
end
