use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
my $deps = {
    'Mojolicious'         => 0,
    'Text::ANSITable'     => 0,
    'Term::ANSIColor'     => 0,
    'Text::Fuzzy'         => 0,
};

WriteMakefile(
    NAME         => 'App::CanIUse',
    VERSION_FROM => 'bin/caniuse',# finds \$VERSION
    AUTHOR       => 'Hernan Lopes (hernanlopes@gmail.com)',
    ABSTRACT =>
      'caniuse tool for the command line',
    EXE_FILES     => ["bin/caniuse"],
    PREREQ_PM     => $deps,
    TEST_REQUIRES => $deps,
    META_MERGE => {
        'meta-spec' => { version => 2 },
         resources => {
             repository => {
                 type => 'git',
                 url  => 'https://github.com/hernan604/App-CanIUse.git',
                 web  => 'https://github.com/hernan604/App-CanIUse',
             },
         },
    },
);

