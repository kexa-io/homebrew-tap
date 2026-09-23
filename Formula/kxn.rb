class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.54.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.54.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "1ef3f92c3d1ca0ea9df2a9abe42f8043a86ca2b361e06171bd1d636238d8ec64"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.54.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "c4e6592be34f958fe5a61505875770a4d13c8c86bae9cae5e261123b6dbd1fa2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.54.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bba322d23b238cf777ea1d1fd2d86a0e879ab29a6b3d2cc49848259357c6c102"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.54.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "608077b23657eb15a2e596c99203d3c4fc3672c547449a74ab68b11528b871bc"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
