class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.22.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.22.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "9fb97c6a621194a886c59830937dd0b3708c55466eea71badb09810d34a179e8"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.22.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "c32e6e7f9fd97bb2241fc17a0412ab8cc813bd09fbd1dd9f09079d641d1d0210"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.22.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba03fa54df70fac2560bfef8c38ab9b19b79f38288bf642a47a2285e106569b8"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.22.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8262059c5b9c9214bd9cc05ed7f6153e25ac823608b2b8843a2f50bd300d9bfb"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
