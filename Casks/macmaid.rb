cask "macmaid" do
  version "0.9.26"
  sha256 "b596e2b19b55bcff08c01d881e640057a75b9c7838dd011c5c2313550ef1bca1"

  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.26/MacMaid-v0.9.26-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64

  app "MacMaid.app"

  zap trash: [
    "~/.config/macmaid",
    "~/Library/Logs/MacMaid",
  ]
end
