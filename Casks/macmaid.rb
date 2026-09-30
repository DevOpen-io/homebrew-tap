cask "macmaid" do
  version "0.15.15"
  sha256 "6d6b5c0cd737d59bd44e4cc7d9b9ca6043be54b1de178b963ac00a97404c1d10"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.15/MacMaid-0.15.15-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
