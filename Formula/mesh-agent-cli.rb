require "language/node"

class MeshAgentCli < Formula
  desc "Mesh terminal agent CLI"
  homepage "https://github.com/dreddi-edit/mesh-agent-cli"
  url "https://registry.npmjs.org/@edgarelmo/mesh-agent-cli/-/mesh-agent-cli-0.2.92.tgz"
  sha256 "760997071fb454a6bc4eba63bba0843eb2b5adaff9dd65c8c41e5773ccc22e8d"
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
