# Spake-cli homebrew formula for releasing brew formula via github.

class Spake < Formula
  desc "Spake CLI tool for automatic machine translation."
  homepage "https://spake.uncommon.industries"
  version "refs/tags/v0.1.5"
  depends_on :macos
  
  license "Apache-2.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/refs/tags/v0.1.5/spake-cli_refs/tags/v0.1.5_macos-arm64.tar.gz"
      sha256 "e9dfbaf6c95a61d09bc4053239ff50f1ccdc15080718d3d54f7c5a5bc909aeef"

      def install
        bin.install "spake-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/refs/tags/v0.1.5/spake-cli_refs/tags/v0.1.5_macos-x86_64.tar.gz"
      sha256 "8c7a3df866f407c3e2ed398cbf727cbb2c05478d6b65f59a3e1a2113224c7562"
      def install
        bin.install "spake-cli"
      end
    end
  end
end
