require "formula"

class Zshctl < Formula
  desc "ZSH CLI application framework."
  homepage "https://github.com/flatheadmill/zshctl"
  url "https://zshctl.sh/downloads/zshctl-0.0.8.tar.gz"
  sha256 "2b422fe48f9a4029c8c067c2919b14c9c5955616fd21958cd39d1a2147b43474"

  def install
    bin.install "bin/" + "zshctl"
    share.install "share/" + "zshctl"
  end

  # Homebrew requires tests.
  test do
    assert_match "VERSION", shell_output("#{bin}/zshctl version", 2)
  end
end
