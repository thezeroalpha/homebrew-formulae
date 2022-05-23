class Xe < Formula
  desc 'Currency converter for xe.com'
  homepage 'https://github.com/thezeroalpha/xe'

  head do
    url 'https://github.com/thezeroalpha/xe.git', branch: 'master'
    depends_on 'go@1.18' => :build
  end

  def install
    system 'go', 'build', *std_go_args
  end

  test do
    output = shell_output("#{bin}/xe 1 eur czk")
    assert_includes output, 'czk'
  end
end
