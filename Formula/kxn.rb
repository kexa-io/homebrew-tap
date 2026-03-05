class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "kxn-v0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.2.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "3366cce3d289bc1d3853c9b2f774ce4203777ca3840237bcceb39d9145d660fd"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.2.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "4db51bf0ea6399feeb837df5db252f8577cf51ecdc7dc404a66a5b9871ac35f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.2.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d792d3fcd73d07eac67a48e2706e0566eb86f9b1c7ad129c90bafa4d4a196a4"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
