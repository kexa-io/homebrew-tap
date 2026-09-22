class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.53.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.53.0/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "c0ce190378bddfbc5e8b5529aa2f3562e75033a59977d966a9590bbae2951c51"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.53.0/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "c05c5af422acb4f33c94ff949c147a84b90f90e1f802fa2c4e7331bf682ac2db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.53.0/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a892d614fcea5a46b93028d188e8140656df0444a863914c950ee51c11705f11"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.53.0/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f09ad67ce8c5ad35a92213e7717139e0c17a2e20793fe9116067abd70d5cd3c4"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
