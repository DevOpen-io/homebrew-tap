cask "macmaid" do
  version "0.11.19"
  sha256 "a43c99eb06df75af33f0775f52cb769bffadf1577fc3f200c80fc59a6694aed0"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.19/MacMaid-0.11.19-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
