class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.63.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.63.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "ee6fd89fd0fcd9b31037a7dcce2c21c2c76fbec1131ac793f958b092fc69f4c6"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.63.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "b95a94334abecf4c22129dae9b04d73c4dcd15e8886268183343fb6c918103a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.63.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c521d9aa824d4bc590f3c5598660b9a534622e79bbb30ea6568fbb026765085"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.63.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0ec6f47a44bb78f704f3748d125ccffffcdae16fe11a2c2f3316938bf2764d8a"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
