class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.27.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.2/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "a79f4eae275b3b1b54b69a14ed358304d5f5b1b9c772f9a136f445002d6b6417"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.2/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "01d5707edc8de1ae1f3300afb26a42db4b7096795fa35a266d00b534c486a857"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.2/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58380be36cf9e8c8e738276f7b88dde4a0bad6439e32794ebc6adfe7be492a6c"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.27.2/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "950def68bc2ae6f5c93fe8cf1366dd4c9d08d92b8cd55dcff4cec02517ab9bcd"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
