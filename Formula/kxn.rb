class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.65.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.65.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "bcc30dd31a06cf16be27bde9bf1eccf5c1816cd273f16506e4653f9b5a027fb4"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.65.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "f480e6a25cffa1f853a186026be8cced807cb564955e4f4e5d63db3dce04f9f8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.65.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "134a671e156543da3172c0b62a78e1bb3b1cc572ec623d0d063a6f929aa176cc"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.65.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7360e79bcbc1df9379643a624cc5f887d3550cdc635469d94c66491eee02a658"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
