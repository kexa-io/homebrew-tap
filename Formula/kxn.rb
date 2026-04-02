class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.26.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.26.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "7134201e9cc5014e3d74b6cffbdda8c03577802e99e79de1234ff3e03889f781"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.26.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "5f0925126ad39afa046e43ff6d25f21f2465cc69dde85ca086e48658b98638a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.26.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19ace69d213789400a4c321b16fe7f315e52f6296f2c3c06622eed5e7913e0f9"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.26.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b24b3090456de6f6ebce8ebb6909f643e78a34167b722e944ef12a0d304b33ea"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
