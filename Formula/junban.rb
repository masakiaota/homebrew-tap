class Junban < Formula
  desc "Tool for managing compute jobs on a single machine"
  homepage "https://github.com/masakiaota/junban"
  url "https://github.com/masakiaota/junban/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "29f1a5454083e40101228da3fba26ef82e09bab6741a0cb34b61b18f7b20beaf"
  license "GPL-2.0-or-later"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    assert_match "junban run", shell_output("#{bin}/junban --help")
  end
end
