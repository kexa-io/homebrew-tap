class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.25.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.25.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "b12214e6055b9d910d6c5478ee49e9ecc2842adfd8ea874b9228c3fce7d6b807"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.25.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "e7eb4db38bad35cbec94cf4b364d0d7ec4a5b2d0643388764a4ebb8ffdba395e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.25.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9238c37cd3293c675948a39a464899ee83dbd0e3349ea3f384cd85827623fe64"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.25.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1b2e4e8fd9e3bb6903c58b3547a01351c31521a3d84d782a82b8910bb03c6f1"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
