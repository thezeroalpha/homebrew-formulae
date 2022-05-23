class Tuir < Formula
  include Language::Python::Virtualenv

  desc 'Command-line Reddit client'
  homepage 'https://gitlab.com/ajak/tuir'
  url 'https://gitlab.com/ajak/tuir/-/archive/v1.29.0/tuir-v1.29.0.tar.gz'
  sha256 'cd3f494dcc543f5c813a99b06e53f52c261ae99af48caa6ee67546b5163a8fd3'
  head 'https://gitlab.com/ajak/tuir', using: :git, branch: 'master'

  depends_on 'python'

  def install
    venv = virtualenv_create(libexec, 'python3')
    system libexec/'bin/pip', 'install', '-v', '--no-binary', ':all:',
      '--ignore-installed', buildpath
    system libexec/'bin/pip', 'uninstall', '-y', name
    venv.pip_install_and_link buildpath
  end

  test do
    assert_match "tuir 1.29.0\n", shell_output("#{bin}/tuir --version")
    assert_match 'tuir version: tuir 1.29.0', shell_output("#{bin}/tuir --debug-info")
  end
end
