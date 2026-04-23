require "language/node"

class MeshAgentCli < Formula
  desc "Mesh terminal agent CLI"
  homepage "https://github.com/dreddi-edit/mesh-agent-cli"
  url "https://registry.npmjs.org/@edgarelmo/mesh-agent-cli/-/mesh-agent-cli-0.2.75.tgz"
  sha256 "f144bb9ca072aae2e94ecf29c8593a1c2743c2b547b31c7359010a2e62f18f69"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/mesh", "--version"
  end
end
