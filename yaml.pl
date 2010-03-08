package MENTA::Plugin::YAML;
use MENTA::Plugin;
use YAML;

sub yaml_load {
    my $path = shift;
    my $data = YAML::LoadFile($path);
    my $yaml = YAML::Dump($data);
    utf8::decode($yaml);
    return YAML::Load($yaml);
}

=head1 NAME

MENTA::Plugin::YAML

=head1 SYNOPSIS

  $output = yaml_load($path);

=head1 AUTHOR

haoyayoi, Soshi Tamura

=head1 SEE ALSO

YAML, MENTA

1;
