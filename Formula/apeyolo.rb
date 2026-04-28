class Apeyolo < Formula
  desc "AI trading assistant for 0DTE SPY options"
  homepage "https://apeyolo.com"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/apeyolo-cli-releases/v0.0.1/apeyolo-darwin-arm64"
      sha256 "2b56f06545a3369e70fdff9716a975e88a5a7a4f0383de918beb23c1089e7ebf"
    end
    on_intel do
      url "https://storage.googleapis.com/apeyolo-cli-releases/v0.0.1/apeyolo-darwin-x64"
      sha256 "3adc0649278658b5cb314db0c8ed93b8df625231c0361b1d0b1b2fbd1fbb74da"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.googleapis.com/apeyolo-cli-releases/v0.0.1/apeyolo-linux-x64"
      sha256 "a5bd67373396053b80f2ecf053b1f92fbd7fe17b65812967d2302f81c2c0699d"
    end
  end

  def install
    binary_name = stable.url.split("/").last
    bin.install binary_name => "apeyolo"
  end

  test do
    assert_match "apeyolo", shell_output("#{bin}/apeyolo --version 2>&1", 1)
  end
end
