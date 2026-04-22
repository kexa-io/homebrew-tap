class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.33.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.33.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "a5d62152b6581789806d298e57f3e15e44880e730466119e9db9e8bdb7ed1c58"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.33.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "f88f47827baf2168f067b6f51b8aa996114e740e7b3b03a0f3214db3ae63f66a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.33.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "632dd7a5117b138147d9aa0a50c5019ba8bbfba766e11e78af3076c0abf82d01"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.33.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5bfe9cec03625c3be90b3b4a2d934c352052cc9d17a8d8512ccab800207eb71d"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
