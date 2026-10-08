cask "codex-companion" do
  version "0.1.44"
  sha256 "9438363506a588d39f4913be10a9b0520b4541f0f246edc40f136a0d2ff2fe4f"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.44/Codex-Companion-0.1.44-macos-universal-dmg.dmg"
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
