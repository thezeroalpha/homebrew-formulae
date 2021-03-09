class Gocket < Formula
  desc "CLI / TUI for Pocket"
  homepage "https://github.com/Phantas0s/gocket"
  url "https://github.com/Phantas0s/gocket/releases/download/v0.2.1/gocket_0.2.1_Darwin_x86_64.tar.gz"
  sha256 "854948e3c35e9f50548bc7a2e0916d0df57499d40ed4a541fcab597686da8b6a"

  def install
    bin.install "gocket"
  end

  test do
    output = shell_output("#{bin}/gocket list", result=1)
    assert_include output, "List your Pocket pages"
  end
end
