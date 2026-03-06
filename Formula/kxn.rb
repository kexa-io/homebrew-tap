class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "kxn-v0.7.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.7.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "1825221ec6a9d80ce0e4e78ccfada3f96bd5fbd7c8aa06611f7f88f0beb569c1"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.7.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "1556da8f32b4a7c0c6b3507a8ff51f0c86a39d59c50e50f67730a05ab226d9c0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.7.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0bc8904bf5510a5196a95fca960815dacc6176bd75aff5dc3946141af88dfb87"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
