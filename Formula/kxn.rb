class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.30.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.30.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "93f906dba264708bc1ebf788e6532692979b7c910a0a71bc767160e0f7413ac3"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.30.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "1e31cdde0db5c85bca7e0b7245bd245646a7d167c73a4e8fe679fce56549bec9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.30.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2c8807512d2e16e167ce27716ce63140ecd33b02f3605636f51cfa3a809a59c"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.30.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1650d2b7aa472cbf0a4a2dc0f98f9e2ed059aa3d8bc2950f787bca99da762ad"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
