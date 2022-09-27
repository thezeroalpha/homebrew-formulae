class Slskd < Formula
  desc 'A modern client-server application for the Soulseek file sharing network.'
  homepage 'https://github.com/slskd/slskd'
  version '0.16.22'
  url "https://github.com/slskd/slskd/releases/download/#{version}/slskd-#{version}-osx-x64.zip"
  sha256 '5ce55298173875d9fabafd94690b5f6b817be14035e41ebffca924c46d2ee2f0'

  def install
    bin.install 'slskd'
    pkgetc.install 'etc'
    pkgshare.install 'wwwroot'
  end

  def caveats
    <<~EOS
      For the server to start, please create the file #{ENV['HOME']}/.local/share/slskd/slskd.yml with at least the following contents:

        web:
            content_path: #{pkgshare}/wwwroot/
    EOS
  end

  service do
    run bin/'slskd'
    log_path '/tmp/slskd/slskd.log'
    error_log_path '/tmp/slskd/error.log'
  end
end
