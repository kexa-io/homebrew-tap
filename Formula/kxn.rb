class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "kxn-v0.6.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.6.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "f04256e17762ede1ccc424a66647c932f7ca47de369497073bad616dbb9f7b0b"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.6.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "ac33de68a72e674a1559c4a5d6d1cf3e80fd3464bd16e709156d2507f63d265b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.6.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "191101048d3382ea217e51a3d4d260ec714c715c1320cd52cf5b086ada68428b"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
