cask "codex-companion" do
  version "0.1.1"
  sha256 "a295e47f349bc52d5a7ad57c83b13dc6cbd8916c8caa7b246c48d90339adea14"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.1/Codex-Companion-0.1.1-macos-universal-dmg.dmg"
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
