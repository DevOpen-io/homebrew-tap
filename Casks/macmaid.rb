cask "macmaid" do
  version "0.15.6"
  sha256 "f303d7299d6f8eab5559e233dc05455fa7d550b411daff0223802a5ee0c2f3cd"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.6/MacMaid-0.15.6-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
