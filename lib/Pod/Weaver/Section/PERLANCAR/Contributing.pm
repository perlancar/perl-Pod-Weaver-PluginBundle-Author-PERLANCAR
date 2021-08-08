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

    #my $text = "TODO";
    #$self->add_text_to_section($document, $text, 'CONTRIBUTING');
}

no Moose;
1;
# ABSTRACT: Add a CONTRIBUTING section for PERLANCAR distributions

=for Pod::Coverage weave_section

=head1 SYNOPSIS

In your F<weaver.ini>:

 [PERLANCAR::Contributing]


=head1 DESCRIPTION
