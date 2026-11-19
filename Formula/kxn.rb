class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.59.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.59.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "a0cfae2caa581c599682f726faa5e0c22a679e0bade70c5b5f5c162e79564209"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.59.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "4b7b17acfdcf82a8504751e9577e86e9c854f3f07397a90e738213b19fbad2f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.59.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca8d8fec37393d19c97701cfb585527f119f7bb3f05c4e23c355f79b09fa8e0f"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.59.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "63c5d0ee742ea5ec3c3078e3c4761e4e6682bc317e1ad1b148863ca17f6a0c5e"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
