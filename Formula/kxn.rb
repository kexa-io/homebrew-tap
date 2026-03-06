class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "kxn-v0.3.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.3.1/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "0fe7fb3c21879128e6f613d506fa2a8600ec7a4d39fb68ce63b6f79b018f1c1e"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.3.1/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "3c597b06c373b1a08d506c8db723d3d2f12fa44327dc750bcd9c8a6589f45793"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.3.1/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82cd45622630bf9c78aa8b23a75301618d51ebefd47f8b3d00a6ffc1a2885ff2"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
