class Conf < Formula
  desc 'Simple dotfiles manager written in Perl'
  homepage 'https://github.com/thezeroalpha/conf'
  url 'https://github.com/thezeroalpha/conf/archive/v1.0.5.tar.gz'
  sha256 'c684bec6df7e01aa425de01e128a66404aa4ce5dad48a6c98da7617f6326119b'
  head 'https://github.com/thezeroalpha/conf.git', branch: 'master'

  depends_on 'perl'

  def install
    bin.install 'conf'
    man1.install 'conf.1'
    zsh_completion.install 'conf.zsh' => '_conf'
  end

  test do
    # Tests basic linking functions
    dotfiles = testpath/'dotfiles'
    dotfiles.mkpath
    ENV['DOTFILES'] = dotfiles

    (dotfiles/'dot.map').write <<~YEET
      vim:
        - vimrc: ~/.vimrc
        - autoload/whatever.vim: ~/.vim/autoload/whatever.vim

      # This is a comment, shouldn't be interpreted
      lf: ~/.config/lf
    YEET
    vimrc_content = 'syntax on'
    (dotfiles/'vim/vimrc').write(vimrc_content)
    autoload_content = 'colorscheme junipero'
    (dotfiles/'vim/autoload/whatever.vim').write(autoload_content)
    lfrc_content = 'set scrolloff 10'
    (dotfiles/'lf/lfrc').write(lfrc_content)

    system "yes | #{bin}/conf link"
    assert_equal vimrc_content, (testpath/'.vimrc').read
    assert_equal autoload_content, (testpath/'.vim/autoload/whatever.vim').read
    assert_equal lfrc_content, (testpath/'.config/lf/lfrc').read

    # Test basic unlinking functions
    output = shell_output("#{bin}/conf unlink vim/vimrc")
    expected_output = <<~YEET
      Removing link: #{ENV['HOME']}/.vimrc
    YEET
    assert_equal expected_output, output
    refute_predicate (testpath/'.vimrc'), :exist?

    # Check link checking functionality
    output = shell_output("#{bin}/conf check")
    expected_output_slice = <<~YEET
      [ XX ] vim/vimrc is not linked.
    YEET
    assert_includes output, expected_output_slice
  end
end
