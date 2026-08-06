cask "codex-companion" do
  version "0.1.17"
  sha256 "a0a8b67e3818b468d8140b7d5d0ac0c5bdc333f8d801401ad2e3aa7da8895c3e"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.17/Codex-Companion-0.1.17-macos-universal-dmg.dmg"
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
