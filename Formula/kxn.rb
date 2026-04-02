class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.21.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.21.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "93483a3fe8865619a0e412ddf9babd4eff3791fa93db0d613852d9c15ea488eb"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.21.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "a87a4c39bd42fe5ca29d1fb5cb6c6a621d97c53c24a93ffb23599970bebf0296"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.21.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8774aacaf2538d0f45759fa33e24d001a1e4fe44e5559468f00d7751fa574f28"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.21.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3520be43ef3106dd831a4c97c69ead70c3d2e8049e9a24becca9d3a8595c11e"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
