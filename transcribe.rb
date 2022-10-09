# brew install enricogenauck/tap/transcribe

class Transcribe < Formula
  version "0.0.1"
  desc "transcribe is a wrapper for vosk-transcriber"
  homepage "https://github.com/enricogenauck/transcribe"
  url "https://github.com/enricogenauck/transcribe",
      using:    :git,
      branch:   "main",
      revision: "282c6609d1b4406d119c7fa7647fd6df534332b8"

  depends_on "python"

  def install
    bin.install "transcribe"
  end

  def post_install
    system "pip3 install vosk"
  end

  test do
    false
  end
end
