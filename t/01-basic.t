use v6.c;
use Test;
use SupplierMaker::IO;
use IO::Blob;

my $io = IO::Blob.new();

my $supplier = supplier-for-io($io);
$supplier.emit('ohno');

$io.seek(0);
is $io.slurp-rest, "ohno\n";

done-testing;
