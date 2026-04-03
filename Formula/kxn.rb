class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.26.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.26.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "c85d0adcf2b4d53178458e7d3630f7a62f2ded0915f7b03bbd8519ecf3aab9aa"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.26.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "ad0578877083423db087eac49150ee1633992c81440c491322767020a69820b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.26.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6ec5262c98ff434c33e4975aac3a6f1f16b0161b9800f3725a207b33c6e6b73"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.26.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bb8093f04008e0524b67a7cc0a852ef872ddb408000593afe24fcb7005779862"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
