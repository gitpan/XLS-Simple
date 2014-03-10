
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "xls\x{8bfb}\x{53d6}\x{5199}\x{5165}",
  "AUTHOR" => "abbypan <abbypan\@gmail.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "XLS-Simple",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "XLS::Simple",
  "PREREQ_PM" => {
    "Excel::Writer::XLSX" => 0,
    "Spreadsheet::Read" => 0
  },
  "TEST_REQUIRES" => {},
  "VERSION" => "0.01",
  "test" => {
    "TESTS" => ""
  }
);


my %FallbackPrereqs = (
  "Excel::Writer::XLSX" => 0,
  "Spreadsheet::Read" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



