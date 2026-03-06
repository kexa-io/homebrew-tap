class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "kxn-v0.4.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.4.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "50b8c5ab03d90eb83662d66494285216a9a0f080b7850ac7a1e863b1a6992573"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.4.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "d589751198dd2e2bef9efcc8cf344fec02792ea13796fe3d5b397e45b60a1962"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.4.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cfd560d034d808149078dbc0f4cddec39a0a053943ae409d88247f1f32ca459b"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
