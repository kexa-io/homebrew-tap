class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.27.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "b5b02164fecdd40414b03d3d2a5d57140909093e1ee6dd71fe88c3a77d8176b8"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "dfda8f90e7f6af5ba9201baa7995d2db7b04b9d1334b7b268a3fa35894dbd26a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "383e58a2a027ea17ba3bcbc75ba19fcba099740e0ff9adf94d23407959727fc4"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f38fb1169d7f2b519dacef0b05211291acccb3a6bedacac1aba8196b5b4fb451"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
