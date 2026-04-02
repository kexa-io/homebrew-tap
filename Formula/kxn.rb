class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.24.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.24.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "91503b0ffec5f8c3a6bbfc1069ebe6a17d876ed0ecc1fe1916c093acc7b58020"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.24.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "3e3b490d64a77d3c32e4b29922175a908e8800b23c9bb4d2e69776100f86eb98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.24.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0cac012c16d1602eb1f57e8f723f278983971fafe7639faf57649dd4fcdf4e92"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.24.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4a9355ade36d81dbdb039e0d98cc70e94b62f476d40c9e056b287369d06ecde"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
