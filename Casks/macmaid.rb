cask "macmaid" do
  version "0.13.2"
  sha256 "eb1e676ea7da76e9cfcb2434a7a71726ebccf05587b0fc0ea0613fa5e230b7e8"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.13.2/MacMaid-0.13.2-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
