class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "kxn-v0.3.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.3.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "87cd2a64ab67feeec4e7329c550b5f3604254e4bc3b08c73362e37339dec0ced"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.3.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "056c0eff6c7cfe216812098e2de914d2f80413aceac00f5de0c26c8aeda06f3b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.3.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db7d0ee5eb9d992a5abd82901a29e4bc2c69dae816401d552fd84e7a4e0006ee"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
