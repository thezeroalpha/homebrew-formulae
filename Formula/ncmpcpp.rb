# Temporarily creating a formula for my fork, I need the fix urgently & the
# original repo is not very active.
class Ncmpcpp < Formula
  desc 'Ncurses-based client for the Music Player Daemon (thezeroalpha fork)'
  homepage 'https://rybczak.net/ncmpcpp/'
  license 'GPL-2.0-or-later'

  conflicts_with formula: 'ncmpcpp'

  head do
    url 'https://github.com/thezeroalpha/ncmpcpp.git', branch: 'master'

    depends_on 'autoconf' => :build
    depends_on 'automake' => :build
    depends_on 'libtool' => :build
  end

  depends_on 'pkg-config' => :build
  depends_on 'boost'
  depends_on 'fftw'
  depends_on 'libmpdclient'
  depends_on 'ncurses'
  depends_on 'readline'
  depends_on 'taglib'

  uses_from_macos 'curl'

  def install
    ENV.cxx11

    ENV.append 'LDFLAGS', '-liconv' if OS.mac?

    ENV.append 'BOOST_LIB_SUFFIX', '-mt'
    ENV.append 'CXXFLAGS', '-D_XOPEN_SOURCE_EXTENDED'

    args = %W[
      --disable-dependency-tracking
      --prefix=#{prefix}
      --enable-clock
      --enable-outputs
      --enable-unicode
      --enable-visualizer
      --with-curl
      --with-taglib
    ]

    system './autogen.sh' if build.head?
    system './configure', *args
    system 'make'
    system 'make', 'install'
  end

  test do
    ENV.delete('LC_CTYPE')
    assert_match version.to_s, shell_output("#{bin}/ncmpcpp --version")
  end
end
