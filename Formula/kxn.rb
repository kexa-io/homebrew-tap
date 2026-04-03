class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "kxn-v0.28.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.28.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "36912c035c20a91fc177c03960f74dc4562dcdc274547291331d7326aa329f75"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.28.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "c8c6b0961fc456e5a83f412356e58f8b916009d8703c557662882bd8185a1d29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.28.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56f8c53a5adc5ca34d34873bac487f597f0cece95d52473429c6f407049c6088"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.28.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bffabbcfcedc2ace3b3ebf6dc80568ae8fbedac418f43dff0f4fbee49aa47eec"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
