cask "codex-companion" do
  version "0.1.39"
  sha256 "7b5ac1d2618b688279052dec8bf0ef7bd7a4bc87f11e94d9888d0febf71780f1"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.39/Codex-Companion-0.1.39-macos-universal-dmg.dmg"
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
