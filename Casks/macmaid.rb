cask "macmaid" do
  version "0.9.22"
  sha256 "7d4e42e1919cd1bbf08038a5ae0ab688e0ab847c01f60e39f025980d4ce38265"

  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.22/MacMaid-v0.9.22-arm64.dmg"
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
