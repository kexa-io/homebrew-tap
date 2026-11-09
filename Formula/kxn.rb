class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.55.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.1/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "153e501f40441071abf246c6809b008c07627bfb305bcdb0f12fa650dbe281c1"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.1/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "4261a810f9704207d170f053950d55b52cdf6ee944041f950b124778858b2d3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.1/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3eb13ea543891c2a90797483eaf3b40472440a42c6dd40f3328e1ff83cda58d"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.1/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c31b059f6bade16851538f342d73fd7871ba26ae65eacd4e84e91ff4fd8dc4c4"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
