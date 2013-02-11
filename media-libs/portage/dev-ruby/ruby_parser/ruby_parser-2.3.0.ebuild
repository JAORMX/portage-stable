# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/ruby_parser/ruby_parser-2.3.0.ebuild,v 1.3 2013/01/15 06:05:48 zerochaos Exp $

EAPI=2

USE_RUBY="ruby18 ree18 jruby"

RUBY_FAKEGEM_TASK_DOC="docs"
RUBY_FAKEGEM_DOCDIR="doc"
RUBY_FAKEGEM_EXTRADOC="README.txt History.txt"

inherit ruby-fakegem

DESCRIPTION="A ruby parser written in pure ruby."
HOMEPAGE="http://parsetree.rubyforge.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x64-solaris ~x86-solaris"
IUSE=""

ruby_add_rdepend ">=dev-ruby/sexp_processor-3.0.1"
ruby_add_bdepend "doc? ( >=dev-ruby/hoe-2.9.1 )"
ruby_add_bdepend "test? ( virtual/ruby-test-unit >=dev-ruby/sexp_processor-3.0.6 )"

all_ruby_prepare() {
	# Remove reference to perforce method that is not in a released
	# version of hoe-seattlerb.
	sed -i -e '/perforce/d' Rakefile || die
}
