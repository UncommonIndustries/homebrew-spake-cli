# Spake-cli homebrew formula for releasing brew formula via github.

class Spake < Formula
  desc "Spake CLI tool for automatic machine translation."
  homepage "https://spake.uncommon.industries"
  version "v0.1.6"
  depends_on :macos
  
  license "Apache-2.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.6/spake-cli_v0.1.6_macos-arm64.tar.gz"
      sha256 "84c2c91e2a6971080758597fd9c2eaddb5f79a2dacb25bce26ce0b67a47f69a0"

      def install
        bin.install "spake-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.6/spake-cli_v0.1.6_macos-x86_64.tar.gz"
      sha256 "1019d9894493988907e05f373220318eeafe7e63a403fe04a702507b47b80f53"
      def install
        bin.install "spake-cli"
      end
    end
  end
end
