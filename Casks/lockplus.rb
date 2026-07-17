cask "lockplus" do
  version "1.0.63"
  sha256 "87b0c8c4b4dc50f80dc7a25c8d7bd9b12d5224d3eb8ea313faeea4422bb34952"

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
