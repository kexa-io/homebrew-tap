class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.60.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.60.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "edfa4bf7f5413e5185b517789acfb63660c6c92a8d59014c221f619ba13fdfe5"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.60.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "2ba28dbe5e14fba3030e1843d4e94b691223c26e677de4edee86eea3b435bf01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.60.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a0218f54271eda855558dbde22eaa00b5114036e3ee219b0ae9df7110ba27e42"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.60.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e5758e32a60151e0fe32fc86c32f578cfd0095075caca938b8a91c82fed0ae0"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
