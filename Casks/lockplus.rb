cask "lockplus" do
  version "1.0.68"
  sha256 "e8806bff81e8c38adfcd6e1f9c0bcf2ae8a7c00ce33172b7735c86d750d743ed"

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
