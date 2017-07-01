use v6.c;
unit module SupplierMaker::IO:ver<0.0.1>;

sub supplier-for-io(IO::Handle $io --> Supplier) is export {
    my $supplier = Supplier.new;
    my $supply = $supplier.Supply;
    $supply.tap(-> $v { $io.say($v) });
    return $supplier;
}

=begin pod

=head1 NAME

SupplierMaker::IO - blah blah blah

=head1 SYNOPSIS

  use SupplierMaker::IO;

=head1 DESCRIPTION

SupplierMaker::IO is ...

=head1 AUTHOR

Asato Wakisaka <asato.wakisaka@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2017 Asato Wakisaka

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
