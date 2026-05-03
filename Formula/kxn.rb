class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.38.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.38.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "4e49bda633855972228628729e0f4c0542d23c85c94393d6dfde035565b603cc"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.38.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "c146285cf360ebacca76fc8c50870b5f7e5895347faea38198cd7d099eaaee1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.38.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "534ab8620ce1da2dd8237daae0a9f5100b92ce85d58d5e9996a868039408fa7b"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.38.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37052bc58eac0d37f5e03ab3bc9167268a2dd816f44487652b5f4aa6092a6063"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
