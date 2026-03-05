class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/kxn/releases/download/v0.1.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "d4c9177e8dd987e75e77ebd938358800a24df26d279d3f8fbb335740210950a7"
    end
    on_arm do
      url "https://github.com/kexa-io/kxn/releases/download/v0.1.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "c4bd6ab62ee50c13e84a7c365fbb8e9c426342b7d5f4b198419e7f83018e1c88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/kxn/releases/download/v0.1.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3f43f0330a63eb4d88671cad7803f04f790231f08a15c336f95296c9eb45a65"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
