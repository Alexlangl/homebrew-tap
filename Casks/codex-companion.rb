cask "codex-companion" do
  version "0.1.13"
  sha256 "7b6eedf7f96a5bfa741266c399e81aab0696c6014bc01a3204119d80ccc3c839"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.13/Codex-Companion-0.1.13-macos-universal-dmg.dmg"
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
