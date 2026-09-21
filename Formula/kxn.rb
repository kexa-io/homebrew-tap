class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.52.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.2/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "9d93ac4eecc93d4c5ce98906b1973d368246a3834b6dc6d04b39463500944bbe"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.2/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "20ac8f368fc6323f3448c2ba5027d2b8beb6d46737d93ca125b438664dd083aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.2/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80cb4998c0d795e762137d8ef72d87539ff03b6d014614bb50cd8f49cf4aedfc"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.2/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "71990ad5e1abef557cbf5dbe81bbde7a48ca2afb720c77a9dd5e9e36eabc720f"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
