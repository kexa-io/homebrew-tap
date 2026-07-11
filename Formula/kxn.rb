class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.52.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "6660638b9c8ff6575ac58945b91f2d46b32b0e5e9aa145dc53c73a1ba3b1386c"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "bc23abf8ac39e3080009fd847c20e4511a2641e35fdbfc0f9a57a10cc7ac8219"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17a3eb7240f385f8aad958cfc08010155c1f29e9ec23c35865dab624aceabbaa"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "161861aed19e7774f4bd4b3fc1ef6237aa0b2eaef9e58367237cebf59f67cb82"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
