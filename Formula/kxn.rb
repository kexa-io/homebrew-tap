class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.64.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.64.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "a9ae0769fcdd9a05bb6d1a037ad58aa4ebb808e06fb18ba6f040cf4458d389e7"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.64.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "0affa07c879f8387c09bec9860cc9a2fb38b1b5cb3df2fa4860ee591f1233b88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.64.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad5a3d2fb2dde030f57ba56accef3e01f671de0fe74967cbda8e333f15aef10c"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.64.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4def0b962f6b63393df09b7bec30acd88e2cd519d56205845c753f74b8442adf"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
