cask "macmaid" do
  version "0.15.5"
  sha256 "e066a92ed19c707139b144f6df41f624b63c24d00fd35725fb7d727723af3c1b"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.5/MacMaid-0.15.5-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
