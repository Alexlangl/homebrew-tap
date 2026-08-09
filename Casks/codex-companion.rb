cask "codex-companion" do
  version "0.1.23"
  sha256 "cc94ee6704ffe5a899942974d143af16f99595239d081f998c459b6f29c59026"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.23/Codex-Companion-0.1.23-macos-universal-dmg.dmg"
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
