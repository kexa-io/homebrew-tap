class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "kxn-v0.6.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.6.1/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "f55413338042d7f90f21a9b4fe75ad875f94693ed0caad651577a4a2c50f1297"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.6.1/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "4b8ae0eebc2366fdce37c8d3ae962ec8719c39266ac3be1ee8eb1ff84806c569"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.6.1/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f014102190a77a03358a103df4efed71086b8d3e37c1d39dff4eeeb2e3962a1"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
