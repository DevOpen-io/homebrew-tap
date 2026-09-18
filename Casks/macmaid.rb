cask "macmaid" do
  version "0.13.4"
  sha256 "2da54e2cfa8d136b219e67ec49fc6482cef469c69c93b105adc49a7a62a9fa1d"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.13.4/MacMaid-0.13.4-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
