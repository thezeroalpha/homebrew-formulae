class Gocket < Formula
  desc "CLI / TUI for Pocket"
  homepage "https://github.com/Phantas0s/gocket"
  url "https://github.com/Phantas0s/gocket/releases/download/v0.2.3/gocket_0.2.3_Darwin_x86_64.tar.gz"
  sha256 "552f8654f29066488bd6f6ca7d89f477f19aa545ed81d7f94747c10c6512034c"
  version "0.2.3"

  def install
    bin.install "gocket"
  end

  test do
    output = shell_output("#{bin}/gocket list", result=1)
    assert_include output, "List your Pocket pages"
  end
end
