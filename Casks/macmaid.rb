cask "macmaid" do
  version "0.12.0"
  sha256 "027ce9523dcb92ecfbba820e935db875769dce82097b6c69e64f1857f8ec8f74"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.12.0/MacMaid-0.12.0-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
