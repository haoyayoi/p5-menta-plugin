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

1;
