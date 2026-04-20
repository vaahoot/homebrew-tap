class Zen < Formula
  desc "A macOS CLI tool that blocks distracting domains"
  homepage "https://github.com/vaahoot/zen-mode"
  url "https://github.com/vaahoot/zen-mode/archive/refs/tags/0.1.0.tar.gz"
  sha256 "5f1b096c07ddcd13c7b91c4b67a28c90b206992a545b6d869c1067fc57e118ab"
  license "MIT"

  def install
    system "make"
    bin.install "out/zen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zen -v")
  end
end
