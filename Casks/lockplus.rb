cask "lockplus" do
  version "1.2.0"
  sha256 "114d81541c356f69c10daf0af14e473ce7668093db7ffe01db3887f651a22f7c"

  url "https://github.com/steiale/lockplus/releases/download/v#{version}/lockplus-v#{version}-darwin-arm64.zip"
  name "LockPlus"
  desc "WireGuard + OpenVPN VPN client"
  homepage "https://github.com/steiale/lockplus"

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

  caveats <<~EOS
    If LockPlus is running, quit and reopen it to finish the update.
    LockPlus 1.2.0 is the last version of LockPlus 1; it offers the move to LockPlus 2.
  EOS
end
