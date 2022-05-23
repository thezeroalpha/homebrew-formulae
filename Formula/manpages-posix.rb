class ManpagesPosix < Formula
  desc 'POSIX manpages packaged for macOS'
  homepage 'https://www.kernel.org/doc/man-pages/download.html'
  url 'https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git'
  sha256 '6b4171be604322e98a026ac5a3054d8bd174ce25f4b9f41c8e08815f3c303e72'
  version '2017'

  def install
    cd 'man-pages-posix-2017' do
      man.install ['man0p', 'man1p', 'man3p']
    end
  end

  test do
    assert_predicate (man/'man0p'), :exist?
    assert_predicate (man/'man1p'), :exist?
    assert_predicate (man/'man3p'), :exist?
    assert_includes shell_output('man 1p man | head -n 1'), "POSIX Programmer's Manual"
  end
end
