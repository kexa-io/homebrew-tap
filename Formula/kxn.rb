class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.32.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.32.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "db4b72e70b1563a29a1989b801475a6081067394aa1098ef16b2306378b394d6"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.32.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "a39e4f94d28d614fea8ab0c99835ba7031eb7f2661991f31bbb849a08ffec331"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.32.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c551221d6d7c1850dbcfdb7af5f6eb9ef077497c23642826f331d958ce5e47b4"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.32.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de5ec5e3f1738cb66cf3b4341d2364be4ee66d91bfd5c9764b441c2802630d5b"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
