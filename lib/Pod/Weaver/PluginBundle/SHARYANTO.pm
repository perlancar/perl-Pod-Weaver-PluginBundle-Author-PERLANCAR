package Pod::Weaver::PluginBundle::SHARYANTO;

use 5.010001;

use Pod::Weaver::Config::Assembler;

# VERSION

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@SHARYANTO',                          _exp('@Default'),              {} ],
        [ '@SHARYANTO/PW/Perinci',               _exp('-Perinci'),              {} ],
        [ '@SHARYANTO/PW/EnsureUniqueSections',  _exp('-EnsureUniqueSections'), {} ],
    );
}

1;
# ABSTRACT: SHARYANTO's default Pod::Weaver config

=for Pod::Coverage .*

=head1 SYNOPSIS

In C<weaver.ini>:

 [@SHARYANTO]

or in C<dist.ini>:

 [PodWeaver]
 config_plugin = @SHARYANTO


=head1 DESCRIPTION

Equivalent to:

 [@Default]
 [-EnsureUniqueSections]
 [-Perinci]


=head1 SEE ALSO

L<Pod::Weaver>

L<Dist::Zilla::PluginBundle::SHARYANTO>
