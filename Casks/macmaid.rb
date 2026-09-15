cask "macmaid" do
  version "0.9.34"
  sha256 "7ad66851b16f211ed439bb8a44a165187fb47c91dd7304ae8163d37d1d1396db"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.34/MacMaid-0.9.34-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
