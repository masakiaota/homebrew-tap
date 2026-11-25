class Junban < Formula
  desc "Tool for managing compute jobs on a single machine"
  homepage "https://github.com/masakiaota/junban"
  url "https://github.com/masakiaota/junban/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "4e1aee35c0e36aaeb3f773128aa14377e0d82673152f95ceba5587d7ee24620f"
  license "GPL-2.0-or-later"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/junban --version")
    assert_match "junban run", shell_output("#{bin}/junban --help")
  end
end
