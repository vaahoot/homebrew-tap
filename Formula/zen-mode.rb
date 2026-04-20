class ZenMode < Formula
  desc "A macOS CLI tool that blocks distracting domains"
  homepage "https://github.com/vaahoot/zen-mode"
  url "https://github.com/vaahoot/zen-mode/archive/refs/tags/0.1.1.tar.gz"
  sha256 "453537bd2b06cec73e967977fe68e6c7884fe4bc8e5657096043cb257cff0bcc"
  license "MIT"

  def install
    system "make"
    bin.install "out/zen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zen -v")
  end
end
