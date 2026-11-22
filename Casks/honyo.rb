cask "honyo" do
  version "0.7.5"
  sha256 "b1248c38acdb2988b4d54f158ff31a719031b281bcbccc4ab1f7c97194f3b1da"

  url "https://github.com/masakiaota/honyo/releases/download/v#{version}/Honyo-#{version}-arm64.zip"
  name "Honyo"
  desc "Local translation desktop app for macOS"
  homepage "https://github.com/masakiaota/honyo"

  depends_on arch: :arm64

  app "Honyo.app"
end
