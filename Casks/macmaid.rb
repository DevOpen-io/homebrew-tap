cask "macmaid" do
  version "0.15.35"
  sha256 "a898032a66bd5fcade5fdc0c65c67698c7914072e9a2c02b1adadf0205636228"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.35/MacMaid-0.15.35-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
