require "formula"

class Zshctl < Formula
  desc "ZSH CLI application framework."
  homepage "https://github.com/flatheadmill/zshctl"
  url "https://zshctl.sh/downloads/zshctl-0.0.2.tar.gz"
  sha256 "193fcb15b7c04aaad6f5dac9c817aa0907c66a110bc27b13e6dc8d00379b2d5a"

  def install
    bin.install "bin/" + "zshctl"
    share.install "share/" + "zshctl"
  end

  # Homebrew requires tests.
  test do
    assert_match "VERSION", shell_output("#{bin}/zshctl version", 2)
  end
end
