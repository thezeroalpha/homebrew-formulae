class AcademicWritingCheck < Formula
  desc "check for passive words, weasel words, duplicate words, typographical errors and words strunk & white don't like"
  homepage 'https://github.com/devd/Academic-Writing-Check'
  head 'https://github.com/devd/Academic-Writing-Check', branch: 'master', using: :git

  def install
    system 'chmod u+x checkwriting'
    bin.install 'checkwriting' => 'academic-writing-check'
  end

  test do
    True
  end
end
