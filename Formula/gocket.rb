class Gocket < Formula
  desc "CLI / TUI for Pocket"
  homepage "https://github.com/Phantas0s/gocket"
  version "0.2.4"
  url "https://github.com/Phantas0s/gocket/releases/download/v0.2.4/gocket_0.2.4_Darwin_x86_64.tar.gz"
  sha256 "971594be7b9b0efef3e68665a6d2a43dff1ea6cb7665725ea2a5212b9035186f"

  def install
    bin.install "gocket"
  end

  test do
    output = shell_output("#{bin}/gocket list", result=1)
    assert_include output, "List your Pocket pages"
  end
end
