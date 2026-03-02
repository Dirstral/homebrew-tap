class Dir2mcp < Formula
  desc "Deploy any local directory as an MCP knowledge server with indexing, retrieval, and citations."
  homepage "https://github.com/Dirstral/dir2mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Dirstral/dir2mcp/releases/download/v0.1.0/dir2mcp_0.1.0_darwin_arm64.tar.gz"
      sha256 "58b11a32a9d6b432467ec84c0129ed1078e2ed01465f798d7a2aeff06ee5458c"
    end
    on_intel do
      url "https://github.com/Dirstral/dir2mcp/releases/download/v0.1.0/dir2mcp_0.1.0_darwin_amd64.tar.gz"
      sha256 "6c52083a74dc5bf3327c2624274bba4d19c33e565b3cb178b52d7d28bcbf0369"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Dirstral/dir2mcp/releases/download/v0.1.0/dir2mcp_0.1.0_linux_arm64.tar.gz"
      sha256 "3bfe4225cc03467bb6772ccd74c5942c2d15682980fb5a2ffd70a09872126747"
    end
    on_intel do
      url "https://github.com/Dirstral/dir2mcp/releases/download/v0.1.0/dir2mcp_0.1.0_linux_amd64.tar.gz"
      sha256 "ad8c554074860334836c276ab3f02a2bb340e245a20f9a04137e68fe1fc4c4f3"
    end
  end

  def install
    bin.install "dir2mcp"
  end

  test do
    system "#{bin}/dir2mcp", "version"
  end
end
