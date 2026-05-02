class Apeyolo < Formula
  desc "AI trading assistant for 0DTE SPY options"
  homepage "https://apeyolo.com"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://storage.googleapis.com/apeyolo-cli-releases/v0.0.2/apeyolo-darwin-arm64"
      sha256 "6d18a6b00ffe32949f5fd8fde5940c2093f85f43cd66a352132c0baf2978006d"
    end
    on_intel do
      url "https://storage.googleapis.com/apeyolo-cli-releases/v0.0.2/apeyolo-darwin-x64"
      sha256 "2ac114f7ee99a2f99949f5a2c4fcc935881d8d1754381c106ccd3ffc0d4ac6f7"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.googleapis.com/apeyolo-cli-releases/v0.0.2/apeyolo-linux-x64"
      sha256 "0eb6ad7bcf62ad7925962383f5c03397b85947afeb73b169609dd3e4b2c1745b"
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
