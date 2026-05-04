require "language/node"

class MeshAgentCli < Formula
  desc "Mesh terminal agent CLI"
  homepage "https://github.com/dreddi-edit/mesh-agent-cli"
  url "https://registry.npmjs.org/@edgarelmo/mesh-agent-cli/-/mesh-agent-cli-0.3.22.tgz"
  sha256 "3b86945726471d65162d6771647655f4257b3e05ee739e894085ab2a9dcca95d"
  # The npm package is UNLICENSED/all rights reserved. Homebrew uses
  # :cannot_represent when no supported SPDX license applies.
  license :cannot_represent

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/mesh", "--version"
  end
end
