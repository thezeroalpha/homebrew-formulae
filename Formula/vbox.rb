class Vbox < Formula
  desc "vbox lets you manipulate (start, stop, pause, suspend) VirtualBox VMs, and change shared folders."
  homepage "https://git.alex.balgavy.eu/vbox"
  url "https://github.com/thezeroalpha/vbox/archive/v1.0.1.tar.gz"
  sha256 "c8981ac89a51fd33885241bfc859919c21cc2f69c00591154d3ddd7becab9d76"

  def install
    bin.install "vbox"
    man1.install "vbox.1.man" => "vbox.1"
    zsh_completion.install "vbox.zsh" => "_vbox"
  end

  test do
    output = shell_output("#{bin}/vbox -h")
    assert_include output, "list, ls"
  end
end
