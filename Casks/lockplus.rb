cask "lockplus" do
  version "1.0.57"
  sha256 "0acf4c1a81bdf2439190db7b1ddd5552abc86c02ab0206f193f24128770ca291"

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
