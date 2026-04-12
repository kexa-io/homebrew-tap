class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.29.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.29.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "e7badd2b4efeb259a7adbaad58f5a6724bf62b31842cd8947fb3b8333af4cc40"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.29.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "b2f9a61ef06a028420c0680fcb3744def7c339bb02b94e9b103176e16beccb08"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.29.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "268bd0896b1bd92703fc3a510f56cbe4c3aaf4ce7371b43d9ead64eb59af75fb"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.29.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1b3bb0f6bfd8d8f465f07ac112de58ac648ce278c40daf470d533369d8a625de"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
