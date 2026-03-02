class Dirstral < Formula
  desc "Interactive TUI client for dir2mcp knowledge bases."
  homepage "https://github.com/Dirstral/dir2mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dirstral/dir2mcp/releases/download/v0.1.0/dirstral_0.1.0_darwin_arm64.tar.gz"
      sha256 "6f21bc2455db558d6399ae35657b318fe4f5782176fc8c08269e28703dccd0ef"
    end
    on_intel do
      url "https://github.com/Dirstral/dir2mcp/releases/download/v0.1.0/dirstral_0.1.0_darwin_amd64.tar.gz"
      sha256 "d68da95a2a08f9b9791db007b461c1a9a73e3e26575acebeace2430fc1eadc96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dirstral/dir2mcp/releases/download/v0.1.0/dirstral_0.1.0_linux_arm64.tar.gz"
      sha256 "c862278ac5602d1bdab23fbcce3d25d3fd6445d6e07b5674e1f7260d4c391d1c"
    end
    on_intel do
      url "https://github.com/Dirstral/dir2mcp/releases/download/v0.1.0/dirstral_0.1.0_linux_amd64.tar.gz"
      sha256 "26a69f829de2bce5ff0c83f80f5b07c9689977b9e3b08de55146ea919836c568"
    end
  end

  def install
    bin.install "dirstral"
  end

  test do
    system "#{bin}/dirstral", "version"
  end
end
