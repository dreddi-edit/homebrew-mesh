require "language/node"

class MeshAgentCli < Formula
  desc "Mesh terminal agent CLI"
  homepage "https://github.com/dreddi-edit/mesh-agent-cli"
  url "https://registry.npmjs.org/@edgarelmo/mesh-agent-cli/-/mesh-agent-cli-0.2.63.tgz"
  sha256 "a62cd50b82b71b2f14791f92bbeb979975c6ca890cfd5af033f5b6deafbaf41c"
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
