cask "macmaid" do
  version "0.9.29"
  sha256 "c90ff2c63f8dad0ed544add2c93c11810b4fb11f2541feeca834061625ceec8e"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.29/MacMaid-0.9.29-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
