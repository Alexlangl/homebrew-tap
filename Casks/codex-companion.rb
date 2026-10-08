cask "codex-companion" do
  version "0.1.45"
  sha256 "cf0862af4404386b5dcf45ce7accce3e28e61e4a8f03f9615069ee61f393835b"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.45/Codex-Companion-0.1.45-macos-universal-dmg.dmg"
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
