# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/net-http-persistent/net-http-persistent-2.7.ebuild,v 1.4 2012/09/29 15:50:26 grobian Exp $

EAPI=4

USE_RUBY="ruby18 ruby19 ree18"

RUBY_FAKEGEM_TASK_DOC="docs"
RUBY_FAKEGEM_DOCDIR="doc"

RUBY_FAKEGEM_EXTRADOC="History.txt README.rdoc"

inherit ruby-fakegem

DESCRIPTION="Manages persistent connections using Net::HTTP plus a speed fix for Ruby 1.8."
HOMEPAGE="https://github.com/drbrain/net-http-persistent"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE="doc test"

ruby_add_bdepend "doc? ( dev-ruby/hoe )
	test? ( dev-ruby/hoe dev-ruby/minitest )"

all_ruby_prepare() {
	# Use a modern key size to avoid problems with OpenSSL 1.0.1.
	# https://github.com/drbrain/net-http-persistent/issues/25
	sed -i -e 's/RSA.new 512/RSA.new 1024/' test/test_net_http_persistent_ssl_reuse.rb || die
}
