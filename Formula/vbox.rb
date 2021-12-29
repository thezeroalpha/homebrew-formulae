class Vbox < Formula
  desc "vbox lets you manipulate (start, stop, pause, suspend) VirtualBox VMs, and change shared folders."
  homepage "https://git.alex.balgavy.eu/vbox"
  url "https://github.com/thezeroalpha/vbox/archive/v1.0.2.tar.gz"
  sha256 "c0301c89f686e6a08ef29c3390a9afc45523492216adf0656cceeba2b665905e"

  def install
    bin.install "vbox"
    man1.install "vbox.1.man" => "vbox.1"
    zsh_completion.install "vbox.zsh" => "_vbox"
  end

  test do
    output = shell_output("#{bin}/vbox -h")
    assert_includes output, "list, ls"
  end
end
