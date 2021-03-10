class Gocket < Formula
  desc "CLI / TUI for Pocket"
  homepage "https://github.com/Phantas0s/gocket"
  url "https://github.com/Phantas0s/gocket/releases/download/v0.2.2/gocket_0.2.2_Darwin_x86_64.tar.gz"
  sha256 "fd9b8e5437cc332b17076b3c43b2f235311491aa1a11a28154248a11f1359d84"
  version "0.2.2"

  def install
    bin.install "gocket"
  end

  test do
    output = shell_output("#{bin}/gocket list", result=1)
    assert_include output, "List your Pocket pages"
  end
end
