class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "kxn-v0.5.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.5.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "bc1c3b6f41efba1e840213f03aa393f8b9f3df79dbfd618af085f4bc14ddcaeb"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.5.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "8a47c6041b13af2673cffcc00bde8dff11a2d03b1b9779fb242b52cf32bbc186"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/kxn-v0.5.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb61712905091ac9cb13694cd2a7aac4237a77778d9ce9acd93e756120d54613"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
