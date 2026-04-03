class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.27.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.1/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "3f7718127967d767b9a34e603121d161fa5c19da5685fc2b437b1e90aa49c62e"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.1/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "7bee77b78de39994e1b074def9a8bbfe83742bfc69fe94c907f733d944c9abe5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.1/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "981143734553c6d27868b9b5b0d85d5d6dd4ed9facbb85a5d63e2acdb439e9e1"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.1/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f5d617320dd0153d3f192b35e0e8a7169141e45329d12341533ad767cd7c448"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
