# Spake-cli homebrew formula for releasing brew formula via github.

class Spake < Formula
  desc "Spake CLI tool for automatic machine translation."
  homepage "https://spake.uncommon.industries"
  version "v0.1.9"
  depends_on :macos
  
  license "Apache-2.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.9/spake-cli_v0.1.9_macos-arm64.tar.gz"
      sha256 "0df011a58d34382c7f651fbba290912adc9f419ffa6e7e70ed0499fc224b61cd"

      def install
        bin.install "spake-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.9/spake-cli_v0.1.9_macos-x86_64.tar.gz"
      sha256 "6b43bdaba6b8f4ca47d3a857dfa7452e7703c33385761065de9a333397d75b0e"
      def install
        bin.install "spake-cli"
      end
    end
  end
end
