require "formula"

class Zshctl < Formula
  desc "ZSH CLI application framework."
  homepage "https://github.com/flatheadmill/zshctl"
  url "https://zshctl.sh/downloads/zshctl-0.0.9.tar.gz"
  sha256 "0305e04fc5ab87e7eff668abae000dc1145fc1f8e097c844066ae0aa5f77ddd8"

  def install
    bin.install "bin/" + "zshctl"
    share.install "share/" + "zshctl"
  end

  # Homebrew requires tests.
  test do
    assert_match "VERSION", shell_output("#{bin}/zshctl version", 2)
  end
end
