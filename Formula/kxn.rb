class Kxn < Formula
  desc "Kexa Next Gen — multi-cloud compliance scanner in Rust"
  homepage "https://github.com/kexa-io/kxn"
  version "0.52.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.3/kxn-x86_64-apple-darwin.tar.gz"
      sha256 "c571de31930830a741b5f5b8710fb9f7d43380fe26a76b9e6e4dcb7d0e6c0ddc"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.3/kxn-aarch64-apple-darwin.tar.gz"
      sha256 "19daab3dad84a79467caf08563b8f749ded9ea8f45adffa9579c438a5a0d30aa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.3/kxn-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "721493d5a3a9f9dcbf3e42b8946399d810021cccb203a8c2471cc61b7744811a"
    end
    on_arm do
      url "https://github.com/kexa-io/homebrew-tap/releases/download/v0.52.3/kxn-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "abc636906f2cb9410e30152b22b99b42d6b671cc952ca151a17e6b63e7c23c67"
    end
  end

  def install
    bin.install "kxn"
  end

  test do
    assert_match "kxn", shell_output("#{bin}/kxn --version")
  end
end
