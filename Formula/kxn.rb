class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.57.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.57.1/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "1695280532560e8e4714bb86bc3f72540da2ed9d3a816280fd8dd658b3a50580"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.57.1/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "779c38d97bac43daeacff65383e3890c34426f356a91a743a6c06c75ae9c7a69"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.57.1/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3518636bd7589a64525243af98c058fbbfef34a6bda003b125d404d45b5e7693"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.57.1/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f309ece49bca99017269e5480d1b5b9e11478fc6d1bf4ef4dd2028f30a242b51"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
