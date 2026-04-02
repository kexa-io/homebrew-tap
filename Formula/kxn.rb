class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.20.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "3728d5f5a047ed441173fae79e55197864dd1021002c7f43593b24f6ac4eabb9"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.20.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "59ec9bd0ecea5eae6592078687f59ee488629dee37c89ecf5bb7a165e4aaf5f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.20.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "af188d87796e97130a61f02e9febbfed251ef1f63dedc99c57804afea1936d07"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.20.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1210b320dd9bbf8f477910c59c640fa58796a1a11eb039e8eaa3072de93ab3d"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
