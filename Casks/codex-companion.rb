cask "codex-companion" do
  version "0.1.32"
  sha256 "99a5bda69dfbd69369e9be73c71051c6e44c38302a4bbc42edceb8fdc79fb351"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.32/Codex-Companion-0.1.32-macos-universal-dmg.dmg"
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
