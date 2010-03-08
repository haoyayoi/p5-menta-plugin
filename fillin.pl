package MENTA::Plugin::Fillin;
use MENTA::Plugin;
use HTML::FillInForm;

sub fillin_form {
    my ($html) = @_;
    my $fif = HTML::FillInForm->new;
    return $fif->fill( scalarref => \$html, fobject => MENTA->context->request );
}

=head1 NAME

MENTA::Plugin::Fillin

=head1 SYNOPSIS

  $output = fillin_form($html);

=head1 AUTHOR

haoyayoi, Soshi Tamura

=head1 SEE ALSO

HTML::FillInForm, MENTA

1;
