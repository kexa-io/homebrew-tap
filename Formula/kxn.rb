class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.23.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.23.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "e4e6991a2ef5dd53c2afd229bc2781697f88bf11715676435341434720d2cf12"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.23.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "7f1ed152c5ba7c508a9b636fe5e3b3394120585978e47b98ed2a4a8aeb1ae3f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.23.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3fe7837d93d3d71b3eb34186f22bb7957075911a795164313c77f9def65ca13d"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.23.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98381e12f2a600a63681205ce9bb39c27045d64dd735bcd92d0b8f16e52b0bc8"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
