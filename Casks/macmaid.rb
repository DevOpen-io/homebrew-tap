cask "macmaid" do
  version "0.9.22"
  sha256 "242ad146fd3a9b3a112564b2f0ebb2a6d2563221480e45a945628562a08b44ff"

  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.22/MacMaid-v0.9.22-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64

  app "MacMaid.app"

  zap trash: [
    "~/.config/macmaid",
    "~/Library/Logs/MacMaid",
  ]
end
