cask "lockplus" do
  version "1.1.0"
  sha256 "95a1a177b72c5ef2c0f13a3523965531da2ff7f98a940ea12d5a5a06347feba0"

  url "https://github.com/steiale/wireguide/releases/download/v#{version}/lockplus-v#{version}-darwin-arm64.zip"
  name "LockPlus"
  desc "WireGuard + OpenVPN VPN client"
  homepage "https://github.com/steiale/wireguide"

  depends_on macos: :ventura

  app "LockPlus.app"

  zap launchctl: "io.github.steiale.lockplus.helper",
      trash:     [
        "/Library/Application Support/lockplus",
        "/Library/LaunchDaemons/io.github.steiale.lockplus.helper.plist",
        "/Library/PrivilegedHelperTools/io.github.steiale.lockplus.helper",
        "/Library/PrivilegedHelperTools/openvpn",
        "/var/log/lockplus-helper.log",
        "/var/run/lockplus",
        "~/Library/Application Support/lockplus",
        "~/Library/Caches/io.github.steiale.lockplus",
        "~/Library/LaunchAgents/io.github.steiale.lockplus.gui.plist",
        "~/Library/Logs/lockplus",
        "~/Library/Preferences/io.github.steiale.lockplus.plist",
        "~/Library/WebKit/io.github.steiale.lockplus",
      ]
end
