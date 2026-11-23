class Junban < Formula
  desc "Tool for managing compute jobs on a single machine"
  homepage "https://github.com/masakiaota/junban"
  url "https://github.com/masakiaota/junban/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "afc2538a8520d672c0d27090ecad1512e2ab7f231702bdf8914f4f5becd1428f"
  license "GPL-2.0-or-later"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/junban --version")
    assert_match "junban run", shell_output("#{bin}/junban --help")
  end
end
