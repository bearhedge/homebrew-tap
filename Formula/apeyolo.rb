class Apeyolo < Formula
  desc "AI trading assistant for 0DTE SPY options"
  homepage "https://apeyolo.com"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/bearhedge/APE-YOLO/releases/download/v0.0.1/apeyolo-darwin-arm64"
      sha256 "PLACEHOLDER_UNTIL_FIRST_RELEASE"
    end
    on_intel do
      url "https://github.com/bearhedge/APE-YOLO/releases/download/v0.0.1/apeyolo-darwin-x64"
      sha256 "PLACEHOLDER_UNTIL_FIRST_RELEASE"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/bearhedge/APE-YOLO/releases/download/v0.0.1/apeyolo-linux-x64"
      sha256 "PLACEHOLDER_UNTIL_FIRST_RELEASE"
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
