
use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

$Verbose=2;

WriteMakefile(

	'NAME'			=> 'GD::Polyline',
	'VERSION_FROM'	=> 'Polyline.pm',
	'PREREQ_PM'		=> {
		'GD'		=> '1',
		'Math::Trig'=> '1',
		'Carp'		=> '0', # Carp seems to have no version...
	},

#	($] >= 5.005 ?    ## Add these new keywords supported since 5.005
#		(ABSTRACT_FROM	=> 'Polyline.pm', # retrieve abstract from module
#		 AUTHOR     	=> 'Dan Harasty <harasty@cpan.org>') : ()),

	($] < 5.005 ? ():(	## Add these new keywords supported since 5.005

	'ABSTRACT_FROM'	=> 'Polyline.pm', # retrieve abstract from module
	'AUTHOR'     	=> 'Dan Harasty <harasty@cpan.org>'

	 )),

#	'HTMLLIBPODS' => 'Polyline.pm',

);
