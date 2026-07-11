class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.51.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.51.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "5fce5eeff23c374715b4c1d15270225780b79a8fa2b32a7d8924bfc684a06751"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.51.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "1a35771bc60af6849934e3e92adfbc875df744ddd50a71d8388cb11407ee8433"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.51.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "297e477ad5e95f8ea543bd7293b9ff1275feece4be47da1b20f89b2107288447"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.51.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e744f11388dfaf70bacf6e728adce6dbaf360f784a0af2018c99cc01cdde28b"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
