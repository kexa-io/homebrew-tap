class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.56.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.56.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "c2b25cf59ad1204ab9a3d7fbc71eddcdf6526090d893d74abcf58e5a41bf322b"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.56.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "939fb700980abfe025dfdddbfc9802afcee2e7e61a3289140d8877e8a42f6594"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.56.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92d6f3ff2b867ca68057e5d01255f528424d1b064ff9927cd050de58be733618"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.56.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fd28115b41133abbe4b898ab444dadefdad0f7e582252fd06bc35d51a6bf250b"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
