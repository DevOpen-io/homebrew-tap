cask "macmaid" do
  version "0.9.22"
  sha256 "b46fb17a7fdd75418783941014c9f910351912cea36ff5c5c00a05b39ccfb453"

  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.22/MacMaid-v0.9.22-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64

  app "MacMaid.app"
  binary "#{appdir}/MacMaid.app/Contents/MacOS/macmaid-bin", target: "macmaid"

  zap trash: [
    "~/.config/macmaid",
    "~/Library/Logs/MacMaid",
  ]
end
