# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SpakeCli < Formula
  desc "Spake CLI tool for automatic machine translation."
  homepage "https://spake.uncommon.industries"
  url "https://github.com/UncommonIndustries/spake-cli/releases/download/v0.1.2/spake-cli_v0.1.2_macos-arm64.tar.gz"
  version "v0.1.2"
  sha256 "39acb3cbdfa6fa9ade77bc550684ad21a1f21da9a4bb4c6c6e226154e0a5edfc"
  license "Apache-2.0"



  def install

    bin.install "spake-cli"

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test spake-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
