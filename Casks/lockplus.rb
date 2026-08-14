cask "lockplus" do
  version "1.0.67"
  sha256 "7645c3a8ab421d77720d52bd3e5c1931588540314f5d71321222c08f8a8553ea"

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
