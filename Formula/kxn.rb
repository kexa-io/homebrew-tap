class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.67.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.67.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "7691d87b188cfb2c1861faafb55ad875a8485b6589ea443968510026fa0424bb"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.67.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "59f7b93bebe207e421fe68e43976f2b4e9a130b7e32b3ca721fab22d78b85835"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.67.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc27fc575ec84e2bd3ccf21a6d378d763ea0bd1277a0d6721f1ae966e7127322"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.67.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5200870753a261df858d541c2f7b5ca9c3c81f110c03e2c6a31b66b3ebf2a99a"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
