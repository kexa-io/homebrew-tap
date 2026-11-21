class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.62.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.62.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "29fe1a7859a301d4054e124a52c72b5a07347199274c398765c36264c35131d6"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.62.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "07965033fe7f516b8e5599670712591cc65cea0ae3bf904dd08543b595e3157a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.62.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63020aed95f25d13d16da1946cc965d974af42aeca94e4152cea1ac983604a71"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.62.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "103206e8b68f68859f558d28f5be48ea05faee9bb5f1c287af1e062adc4685dc"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
