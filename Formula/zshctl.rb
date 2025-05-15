require "formula"

class Zshctl < Formula
  desc "ZSH CLI application framework."
  homepage "https://github.com/flatheadmill/zshctl"
  url "https://zshctl.sh/downloads/zshctl-0.0.1.tar.gz"
  sha256 "c7f7e8894cc4a8fd44732e4b4c2afb18369229f06697c2e6f7256e055bba9393"

  def install
    bin.install "bin/" + "zshctl"
    share.install "share/" + "zshctl"
  end

  # Homebrew requires tests.
  test do
    assert_match "VERSION", shell_output("#{bin}/zshctl version", 2)
  end
end
