class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.50.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.50.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "58ddd00b51e2783b03819e714848d88f69fb7a8e93e87707ee0043cef8bc993c"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.50.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "e1c0a42f59d2d4532b6afc7fc65a0ad5282ad9e5e6d099a332977e71c2f3ea1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.50.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85e4a363be61106acfb7db36e0e95b01075a47c8c31e2ba910e9536f867f6ab7"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.50.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e180ac361c3183c5c914e4e22e47bc9250c24e36e61affdf30363688355d9436"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
