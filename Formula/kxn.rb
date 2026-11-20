class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.61.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.61.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "25af495e09ac533eb50b4af0df7eacdf2e885e95382d1ad2569e0889075837b8"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.61.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "bacea5d3fcfefaee0cccbd546c670d72d636af8b9a3cea752a5f3f1198e6240a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.61.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86257a9e724df5b08591a26d14597832904f68158aa9e059cbe3ad25c0d6a50c"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.61.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33d592df878a28cdb7266088672be724fa99cacefa8aa9af82d8a7106c831d91"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
