class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.66.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.66.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "1782b77e630e72c5605be1355d79bbe062d6168ce3835b2f2ffaa2c18a37fd70"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.66.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "5a25537828217cecb2df1e0307aa277e3348ea1ef9b297c63229198029fb5306"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.66.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4cee59b4aab90cc579334d792b8feb0598f3dbaf9e617e157c89fe67b833fce"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.66.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c1edfe9ea47862039bdbbc4c4615ab60203e5467fcc500f3197c737d26cf4b0"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
