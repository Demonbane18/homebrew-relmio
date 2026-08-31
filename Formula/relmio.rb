class Relmio < Formula
  desc "Set up a private OpenAI-compatible endpoint for self-hosted n8n"
  homepage "https://github.com/Demonbane18/relmio"
  url "https://registry.npmjs.org/relmio/-/relmio-0.10.0.tgz"
  sha256 "4ff7a93f4497d9948f369083f9ac75f0bd4086e78f35ae29a9a90c7fbedd81a2"
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
