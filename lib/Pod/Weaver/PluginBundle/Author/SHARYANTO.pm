package Pod::Weaver::PluginBundle::Author::SHARYANTO;

use 5.010001;

use Pod::Weaver::Config::Assembler;

# VERSION

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@Author::SHARYANTO/CorePrep', _exp('@CorePrep'), {} ],
        [ '@Author::SHARYANTO/Name', _exp('Name'), {} ],
        [ '@Author::SHARYANTO/prelude', _exp('Region'), { region_name => 'prelude' } ],

        [ 'SYNOPSIS', _exp('Generic'), {} ],
        [ 'DESCRIPTION', _exp('Generic'), {} ],
        [ 'OVERVIEW', _exp('Generic'), {} ],

        [ 'ATTRIBUTES', _exp('Collect'), { command => 'attr' } ],
        [ 'METHODS', _exp('Collect'), { command => 'method' } ],
        [ 'FUNCTIONS', _exp('Collect'), { command => 'func' } ],
        #[ 'TYPES', _exp('Collect'), { command => ' } ],

        [ '@Author::SHARYANTO/Perinci', _exp('-Perinci'), {} ],

        [ '@Author::SHARYANTO/Leftovers', _exp('Leftovers'), {} ],
        [ '@Author::SHARYANTO/postlude',  _exp('Region'), { region_name => 'postlude' } ],

        [ '@Author::SHARYANTO/Homepage::DefaultCPAN', _exp('Homepage::DefaultCPAN'), {} ],
        [ '@Author::SHARYANTO/Source::DefaultGitHub', _exp('Source::DefaultGitHub'), {} ],
        [ '@Author::SHARYANTO/Bugs::DefaultRT', _exp('Bugs::DefaultRT'), {} ],
        [ '@Author::SHARYANTO/Authors', _exp('Authors'), {} ],
        [ '@Author::SHARYANTO/Legal', _exp('Legal'), {} ],

        [ '@Author::SHARYANTO/EnsureUniqueSections', _exp('-EnsureUniqueSections'), {} ],
        #[ '@Author::SHARYANTO/List', _exp('-Transformer'), { transformer => 'List' } ],
        [ '@Author::SHARYANTO/Encoding', _exp('-Encoding'), {} ],
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

Equivalent to (see source code).


=head1 SEE ALSO

L<Pod::Weaver>

L<Dist::Zilla::PluginBundle::Author::SHARYANTO>
