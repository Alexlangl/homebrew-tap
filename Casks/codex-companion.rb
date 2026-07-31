cask "codex-companion" do
  version "0.1.11"
  sha256 "3dd40af613e0d574a532105f0dd484bcfe987b5f1e1eb30567e4b226b136c780"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.11/Codex-Companion-0.1.11-macos-universal-dmg.dmg"
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
