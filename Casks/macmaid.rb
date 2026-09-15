cask "macmaid" do
  version "0.9.35"
  sha256 "1bfe9b94fb07eda5494fe9dcc7d34ead3c41e660ebe1eaa61e055259ad54f3e8"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.35/MacMaid-0.9.35-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
