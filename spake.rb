# Spake-cli homebrew formula for releasing brew formula via github.

class Spake < Formula
  desc "Spake CLI tool for automatic machine translation."
  homepage "https://spake.uncommon.industries"
  version "v0.1.7"
  depends_on :macos
  
  license "Apache-2.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.7/spake-cli_v0.1.7_macos-arm64.tar.gz"
      sha256 "ae4ebcb7d8e6c1084846a164a9acc255fee5d2c5cdc49be4cb0e3a9663472dda"

      def install
        bin.install "spake-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.7/spake-cli_v0.1.7_macos-x86_64.tar.gz"
      sha256 "0f47110079588a062189dab7d91d55f2775b77b3ec525bdc03426511cd995677"
      def install
        bin.install "spake-cli"
      end
    end
  end
end
