class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.39.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.39.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "8d6ac3167759ad92ddfb57ea2c76a2a0845448c1a466a33758b1270a0a64f601"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.39.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "32841fc86599532c96b58ffaa25501870d00ea2da7bb7acc07c535b7e32008c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.39.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "117d1d1d9e752ecebe21a392ec5923f9edd926feb1b86cd5043085a3b4209aa9"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.39.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e6271f2cc8412420bfa086cce7dd5f88493b23bc33dae2397156538ce3fa84a"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
