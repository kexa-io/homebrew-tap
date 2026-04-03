class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.28.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.28.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "f2092c6a4b3cf1806d9b2738d38768195e726d981e68a6482fe7515ed009469f"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.28.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "2c63370bb8067b6839d694584b7157a867abec34fd482956b3119b32dbc71377"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.28.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "efe56750de9c13e13aadff8b6146ff538a8902ea1372ef0acbc43a001cceb806"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.28.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "637c0f32d932a2e43bc69e33d7805412d6c79acc1d5fbef348b170815acee1c1"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
