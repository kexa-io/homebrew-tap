class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.55.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "54c2c45cb46471dcc321e9e386ff71f96736817095b51729e2e8d4131e92f102"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "d5186cd97ea667669c3a8f5ac5f3f02697e4252654f47a60708debebfa25cdcd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a41b592594eb6fe5dbb7a5b5facb7c8145022945a1338571aa81930892d9f468"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02e8dc39f1626fe8613a096b123a071e3d3be25568bc251594e440444f5ec445"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
