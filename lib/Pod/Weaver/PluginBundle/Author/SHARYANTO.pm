package Pod::Weaver::PluginBundle::Author::SHARYANTO;

use 5.010001;

use Pod::Weaver::Config::Assembler;

# VERSION

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@Author::SHARYANTO/PW/Perinci',               _exp('-Perinci'),              {} ],
        [ '@Author::SHARYANTO/PW/Encoding',              _exp('-Encoding'),             {} ],
        [ '@Author::SHARYANTO/PW/Availability',          _exp('Availability'),          {} ],
        [ '@Author::SHARYANTO/PW/SourceGitHub',          _exp('SourceGitHub'),          {} ],
        [ '@Author::SHARYANTO',                          _exp('@Default'),              {} ],
        [ '@Author::SHARYANTO/PW/EnsureUniqueSections',  _exp('-EnsureUniqueSections'), {} ],
    );
}

1;
# ABSTRACT: SHARYANTO's default Pod::Weaver config

=for Pod::Coverage .*

=head1 SYNOPSIS

In C<weaver.ini>:

 [@Author::SHARYANTO]

or in C<dist.ini>:

 [PodWeaver]
 config_plugin = @Author::SHARYANTO


=head1 DESCRIPTION

Equivalent to:

 [@Default]
 [-EnsureUniqueSections]
 [-Perinci]
 [-Encoding]
 [Availability]
 [SourceGitHub]


=head1 SEE ALSO

L<Pod::Weaver>

L<Dist::Zilla::PluginBundle::Author::SHARYANTO>
