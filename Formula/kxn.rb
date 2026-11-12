class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.55.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.2/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "c945af8b1ac3405f02e99be177ef7945455eb26b116ba592b0c61eb6be8fc093"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.2/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "67deb6cd7f6416648ce6694a5a5a7f583c27930a845a512e12852a034336b258"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.2/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f84b1eb62d040b1fe914bd87c12036de00f33575fb1343b20144f91a25fb92dd"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.55.2/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0e9f184e7a3db69a53b8a5b0040bf3ab4a9634cf70b1c6fcd3e6b658d4b113b9"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
