class NukePort < Formula
  desc "A simple, cross-platform CLI tool to kill processes listening on a specific port"
  homepage "https://github.com/geekaara/nuke-port"
  url "https://github.com/geekaara/nuke-port/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "aa1dc56478a05f28cacd988561fe1954a76481869aedec1912104e119e03e2d3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/nuke", "--help"
  end
end
