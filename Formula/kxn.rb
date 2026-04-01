class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.19.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "0eced366f5164b745f9b019f33417848a548885b1a930eeba6ecc4ea9395856e"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.19.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "a24157a582f2762e4963910060e635ac38b0e774692a660be92bf334f0e513f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.19.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78ac14d8a39ce37671f2aee173a9134ef752dbcac452170c2f3ca52d97b932a2"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.19.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2b061e59d5ca37dffd155c510740a26d51479caf16e577d16f31e1a465af590"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
