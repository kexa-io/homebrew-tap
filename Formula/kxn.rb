class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.58.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.58.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "b3506c382db639aab6664bc345d7349de7f5017c97211462fc4ace992eb1ef32"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.58.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "d15e25c96dcaf38d4fbb5c2891d0092f14548cbffa3cda3cfd662ae8f59693b6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.58.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "369c4d059e4eb47078beacbbf391b293363632ee14dad86a1b1e9146a4c2043b"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.58.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3b9ed9c8a9489a5c3d081b8f1dcd41ae589aa45cf6478f0534754a41f59a6e27"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
