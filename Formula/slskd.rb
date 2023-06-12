class Slskd < Formula
  desc 'A modern client-server application for the Soulseek file sharing network.'
  homepage 'https://github.com/slskd/slskd'
  version '0.17.3'
  url "https://github.com/slskd/slskd/releases/download/#{version}/slskd-#{version}-osx-x64.zip"
  sha256 'f53d97c1f43e1bed194aa25899a569a58c53cd2ac893131d37c0ed3d035e00eb'

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
