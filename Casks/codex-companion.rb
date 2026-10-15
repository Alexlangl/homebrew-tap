cask "codex-companion" do
  version "0.1.46"
  sha256 "ebc88a931d67f4bc7e8bb11b0a5889f0ad1d75be2e61ae8220c0b186c63b6e55"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.46/Codex-Companion-0.1.46-macos-universal-dmg.dmg"
  name "Codex Companion"
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"

  app "Codex Companion.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Codex Companion.app"]
  end

  zap trash: "~/.codex-companion"
end
