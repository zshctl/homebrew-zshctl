require "formula"

class Zshctl < Formula
  desc "ZSH CLI application framework."
  homepage "https://github.com/flatheadmill/zshctl"
  url "https://zshctl.sh/downloads/zshctl-0.0.6.tar.gz"
  sha256 "5d3240ec3db78a38aa4b3a3e4461f64c7fa66ce4512dbf0a884dfabe84dd6531"

  def install
    bin.install "bin/" + "zshctl"
    share.install "share/" + "zshctl"
  end

  # Homebrew requires tests.
  test do
    assert_match "VERSION", shell_output("#{bin}/zshctl version", 2)
  end
end
