cask "codex-companion" do
  version "0.1.48"
  sha256 "8ff0cccb6fb78fafb6208f29e1d38dfdf151f96c1a06214bed1bcda8204a012c"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.48/Codex-Companion-0.1.48-macos-universal-dmg.dmg"
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
