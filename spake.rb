# Spake-cli homebrew formula for releasing brew formula via github.

class Spake < Formula
  desc "Spake CLI tool for automatic machine translation."
  homepage "https://spake.uncommon.industries"
  version "v0.1.8"
  depends_on :macos
  
  license "Apache-2.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.8/spake-cli_v0.1.8_macos-arm64.tar.gz"
      sha256 "a5b6ff0bb2707c0c204453dd968f3d806fa585cb28a4e98dbfe02acfd7dfecec"

      def install
        bin.install "spake-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.8/spake-cli_v0.1.8_macos-x86_64.tar.gz"
      sha256 "3525fe9969bbabf0db890cd5f56119fc1798e9a2c86ed13de3cc0714db243817"
      def install
        bin.install "spake-cli"
      end
    end
  end
end
