class Lavat < Formula
  desc 'Lava lamp simulation using metaballs in the terminal'
  homepage 'https://github.com/AngelJumbo/lavat'
  version '1.1.0'
  url "https://github.com/AngelJumbo/lavat/archive/refs/tags/v#{version}.tar.gz"
  sha256 '3ea77a50555b2cb43d0b84e7d2a165d5da080b67470a40a66ee114fe71e1a60a'
  head 'https://github.com/AngelJumbo/lavat', using: :git, branch: 'master'

  depends_on 'coreutils' => :build

  def install
    # Its makefile uses "install -D" which is only possible with the GNU version
    inreplace 'makefile', /^\tinstall/, "\tginstall"
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  test do
    output = shell_output("#{bin}/lavat -h")
    expected_output_slice = 'Usage: lavat [OPTIONS]'
    assert_includes output, expected_output_slice
  end
end
