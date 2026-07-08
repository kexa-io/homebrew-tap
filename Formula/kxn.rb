class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.49.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.49.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "0cd6b0e8cf516eace8387b13a5f1a547204fefe215f28a42b5032c0d1062af4f"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.49.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "2fd1543fc3b65cbf904357dc9b0e5833a040c606f5e5d469ccbe616accfebb77"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.49.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "845ca46f1c449da44ac9ce5dfd0ab78e15e344ad19c0a37163ca86245190f2f0"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.49.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a8dbfa30f3e2a94139ea6adc1e3fb60d2f2bbf4823eadae4d4d1e575ce15a14f"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
