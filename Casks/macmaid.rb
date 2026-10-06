cask "macmaid" do
  version "0.15.34"
  sha256 "7d253f0d1143f13618114362727f0a7d0271a57c4906d8113078b9a3ca8df148"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.34/MacMaid-0.15.34-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
