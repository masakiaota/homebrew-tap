cask "smooth-scroll" do
  version "0.1.0"
  sha256 "bd2b84d25e6229e623e7a60b68030f026c64f982744dc43e4d568f852ef1af1e"

  url "https://github.com/masakiaota/smooth-scroll/releases/download/v#{version}/SmoothScroll-#{version}.zip"
  name "SmoothScroll"
  desc "Smooth scrolling for mouse wheels and trackballs on macOS"
  homepage "https://github.com/masakiaota/smooth-scroll"

  app "SmoothScroll.app"
end
