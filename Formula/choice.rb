class Choice < Formula
  desc 'A small console based menu selector, inspired by dmenu'
  homepage 'https://pedantic.software/git/choice'
  head 'https://pedantic.software/git/choice', using: :git, branch: 'master'
  sha256 'e17bb79c6718184dcd7d69c23e262c044e275905560ce427e0fdd14a07b257fd'

  def install
    puts `pwd`
    inreplace (buildpath/'Makefile'), 'CFLAGS ?= ', 'CFLAGS ?= -D_DARWIN_C_SOURCE '
    system 'make', 'install', "PREFIX=#{prefix}"
  end

  test do
    assert_includes shell_output("#{bin}/choice -h"), 'Usage:'
  end
end
