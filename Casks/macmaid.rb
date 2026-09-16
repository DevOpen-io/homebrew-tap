cask "macmaid" do
  version "0.11.18"
  sha256 "a955138955679d5996779855d9b1b94862bbb0dde35166c9b1d2d7192b8393eb"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.18/MacMaid-0.11.18-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
