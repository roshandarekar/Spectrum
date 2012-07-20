use utf8;
package Spectrum::Result::FaRegisterAccount;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Spectrum::Result::FaRegisterAccount

=head1 DESCRIPTION

Register Accounts stores detail accounts is used in Invoice, Purchase etc. to generate columns in Registers for speed.

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<FaRegisterAccounts>

=cut

__PACKAGE__->table("FaRegisterAccounts");

=head1 ACCESSORS

=head2 documenttype

  data_type: 'varchar'
  is_nullable: 0
  size: 3

Document Type in which Code has Used

=head2 accountcode

  data_type: 'varchar'
  is_nullable: 0
  size: 6

Account Code Used in Document Type

=cut

__PACKAGE__->add_columns(
  "documenttype",
  { data_type => "varchar", is_nullable => 0, size => 3 },
  "accountcode",
  { data_type => "varchar", is_nullable => 0, size => 6 },
);

=head1 PRIMARY KEY

=over 4

=item * L</documenttype>

=item * L</accountcode>

=back

=cut

__PACKAGE__->set_primary_key("documenttype", "accountcode");


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2012-07-06 13:02:04
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:sZ1CBsOQ9H1DJtqCZPahaw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
