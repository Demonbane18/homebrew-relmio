class Relmio < Formula
  desc "Set up a private OpenAI-compatible endpoint for self-hosted n8n"
  homepage "https://github.com/Demonbane18/relmio"
  url "https://registry.npmjs.org/relmio/-/relmio-0.4.0.tgz"
  sha256 "26ea9205ce240176c9faf549bc1cd363c3d8076fef88dd5a4debe4a89b1f0342"
  license "Apache-2.0"

  depends_on "python" => :build
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_predicate bin/"relmio", :executable?
    system bin/"relmio", "--version"
  end
end
