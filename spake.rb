# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Spake < Formula
  desc "Spake CLI tool for automatic machine translation."
  homepage "https://spake.uncommon.industries"
  version "v0.1.2"
  depends_on :macos
  
  license "Apache-2.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.2/spake-cli_v0.1.2_macos-arm64.tar.gz"
      sha256 "39acb3cbdfa6fa9ade77bc550684ad21a1f21da9a4bb4c6c6e226154e0a5edfc"

      def install
        bin.install "spake-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.2/spake-cli_v0.1.2_macos-x86_64.tar.gz"
      sha256 "d97047a5036f67c818c4955a56c558907eddf5057344adcb9a5aa543236bd028"
      def install
        bin.install "spake-cli"
      end
    end
  end
end
