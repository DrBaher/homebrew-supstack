class Supstack < Formula
  desc "Evidence-based supplement intelligence: CLI and MCP server"
  homepage "https://supstack.me/developers/cli"
  url "https://registry.npmjs.org/@supstack/cli/-/cli-0.19.0.tgz"
  sha256 "acd38f160b305d8f8b82de10da6cd8ed7106ca6a4e42ce6afd1b5e7524464cf0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supstack --version")
  end
end
