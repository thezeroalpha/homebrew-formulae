class Upd < Formula
  desc "upd - update all of your package systems on macOS at once"
  homepage "https://github.com/thezeroalpha/upd"
  url "https://github.com/thezeroalpha/upd/archive/v1.0.tar.gz"
  sha256 "2d0b707ded3dbd167b9001df8ffce62c992cad64964569f993c939c0a5797f72"

  uses_from_macos "ruby"

  def install
    bin.install "upd"
    man1.install "upd.1.man" => "upd.1"
  end

  test do
    output = shell_output("#{bin}/upd -h")
    assert_include output, "-n, --dry-run"
  end
end
