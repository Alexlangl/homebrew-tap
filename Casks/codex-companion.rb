cask "codex-companion" do
  version "0.1.22"
  sha256 "96c25900c11f5330fa1f64a87b81a4336a2246a239f2519bb41223c81e13eaae"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.22/Codex-Companion-0.1.22-macos-universal-dmg.dmg"
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
