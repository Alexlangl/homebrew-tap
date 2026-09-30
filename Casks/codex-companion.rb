cask "codex-companion" do
  version "0.1.43"
  sha256 "4ed847ebff3d67ecb387b9dc37aec3e808862cc0ec9362136a7d3218af7aafd6"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.43/Codex-Companion-0.1.43-macos-universal-dmg.dmg"
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
