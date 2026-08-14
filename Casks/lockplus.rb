cask "lockplus" do
  version "1.0.66"
  sha256 "34d182b762a4f021ff0635177d4cfb97df5959cadf549f80814991c47ec5a453"

  url "https://github.com/steiale/wireguide/releases/download/v#{version}/lockplus-v#{version}-darwin-arm64.zip"
  name "LockPlus"
  desc "WireGuard + OpenVPN VPN client"
  homepage "https://github.com/steiale/wireguide"

  app "LockPlus.app"

  zap trash: [
    "~/Library/Application Support/lockplus",
    "~/Library/Preferences/io.github.steiale.lockplus.plist",
    "/Library/LaunchDaemons/io.github.steiale.lockplus.helper.plist",
    "/Library/PrivilegedHelperTools/io.github.steiale.lockplus.helper",
  ]
end
