class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.29.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.29.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "30a365a9a31e2bf757a384574514212d70ce7fab72dbe19e09e042554bc4a7db"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.29.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "27d6fdb9a10ed2d4b8c8c4290542cd2a48977b6f2aac1f1d7f171e347da27ec4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.29.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "327265ea3275aef40d0847be1aee104a197ba0fb7eac09fd4ef3b1b3e7da49c6"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.29.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07fba32bb774eff5485cc80be463dfa06be41c6dbf44ebd11a9fabd8506acfe9"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
