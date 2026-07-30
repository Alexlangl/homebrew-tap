cask "codex-companion" do
  version "0.1.10"
  sha256 "066a50850f9715e691ea73c2006710b966fb78706d7ae12b6cdcdc20b697644e"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.10/Codex-Companion-0.1.10-macos-universal-dmg.dmg"
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
