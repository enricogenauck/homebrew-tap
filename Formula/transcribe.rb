# brew install enricogenauck/tap/transcribe

class Transcribe < Formula
  version "0.0.2"
  desc "transcribe is a wrapper for vosk-transcriber"
  homepage "https://github.com/enricogenauck/transcribe"
  url "https://github.com/enricogenauck/transcribe",
      using:    :git,
      branch:   "main",
      revision: "720a3f528f663e5dbc24bd760150b708696d8995"

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
