class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.57.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.57.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "2bec418f6c5077038dd45a91145f9ae41589b0e443f24d7f3367e6dc9b315d9a"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.57.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "85beb7936c5275524cc965228130443609b3016df6b55963309b0803cba6aeba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.57.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8bdd538bc516ceaaeedeb969eaf122ba512a0d52f1ff4670ef3dbcb65abff8fc"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.57.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f4840ba679763c1cecd49b9d929968bb1dbdb30e252a63821f510dd9e11f7d5"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
