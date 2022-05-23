class Upd < Formula
  desc 'upd - update all of your package systems on macOS at once'
  homepage 'https://github.com/thezeroalpha/upd'
  url 'https://github.com/thezeroalpha/upd/archive/v1.0.1.tar.gz'
  sha256 'ee2f84ff28149548628222c7d9331c69ff8aa8a6b7e512ff92661afdcbd511f8'
  head 'https://github.com/thezeroalpha/upd.git', using: :git, branch: 'master'

  uses_from_macos 'ruby'

  def install
    bin.install 'upd'
    man1.install 'upd.1.man' => 'upd.1'
  end

  test do
    output = shell_output("#{bin}/upd -h")
    assert_includes output, '-n, --dry-run'
  end
end
