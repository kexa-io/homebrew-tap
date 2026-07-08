class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.49.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.49.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "3b2ee5ba3619a41653678d59946384d116d2d5dd84b5b6b7fe3d96de893a4e10"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.49.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "bdf14e271015c2285974e6408959b0127ffb7dc63b5ec9cca95d2e1fd3b89f79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.49.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "010bf9db5577a957dd17092128c074e80233906f08c86f80b2e28ebf7c7e51fb"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.49.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35ef803d3fbdcfa913d5d82f0e231b4b3bbe32e47e28cf55a995289d096dc748"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
