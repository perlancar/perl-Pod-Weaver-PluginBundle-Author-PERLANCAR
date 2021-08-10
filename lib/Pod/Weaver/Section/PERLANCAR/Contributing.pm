package Pod::Weaver::Section::PERLANCAR::Contributing;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use Moose;
with 'Pod::Weaver::Role::AddTextToSection';
with 'Pod::Weaver::Role::Section';

sub weave_section {
    my ($self, $document, $input) = @_;

    my $text = <<'_';

To contribute, you can send patches by email/via RT, or send pull requests on
GitHub.

Most of the time, you don't need to build the distribution yourself. You can
simply modify the code, then test via:

 % prove -l

If you want to build the distribution (e.g. to try to install it locally on your
system), you can install L<Dist::Zilla>,
L<Dist::Zilla::PluginBundle::Author::PERLANCAR>, and sometimes one or two other
Dist::Zilla plugin and/or Pod::Weaver::Plugin. Any additional steps required
beyond that are considered a bug and can be reported to me.

_
    $self->add_text_to_section($document, $text, 'CONTRIBUTING');
}

no Moose;
1;
# ABSTRACT: Add a CONTRIBUTING section for PERLANCAR distributions

=for Pod::Coverage weave_section

=head1 SYNOPSIS

In your F<weaver.ini>:

 [PERLANCAR::Contributing]


=head1 DESCRIPTION
