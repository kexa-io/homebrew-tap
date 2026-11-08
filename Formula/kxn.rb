class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.55.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "fd463f66bea228757ec5d95bccbaccab43ac976902f3c8e654df8638ac48f66e"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "5c787b722fb139ca8e092778404d789755d3df385eaad069081a82d51d2881b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ff3685275771355df8fff4fdbb63a18cb9de304e3592f7adf0cd95aabc42f19"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56d64b118c962771875b92874152b74e3742139e8837d37a0486643cf4293322"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
