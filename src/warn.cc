#include "debug.hh"
#include "lexer.hh"
#include "moment.hh"
#include "time-description.hh"
#include "proto.hh"
#include "plist.hh"
#include "source-file.hh"
#include "source.hh"
#include "main.hh"

ostream &warnout (cerr);
ostream *mlog(&cerr);
/*
void
warning(String s)
{
    WARN << s;
}
*/

void
error(String s)
{
    if (busy_parsing())
	yyerror(s);
    else
	cerr <<  "error: " << s << "\n";
	
    exit(1);
}

void
error_t(const String& s, const Moment& r)
{
    String t_mom = String(trunc(r)) + String(r - Moment(trunc(r)));
    String e=s+ " (t = " +  t_mom + ")";
    error(e);
}

void
error_t(const String& s, Time_description const &t_tdes)
{
    String e=s+ " (at t=" + String(t_tdes.bars_i_) + ": " + String(t_tdes.whole_in_measure_) + ")\n";
    error(e);
}

void
message( String message_str, char const* context_ch_c_l )
{
    String str = "lilypond: ";
    Source_file* sourcefile_l = source_l_g->sourcefile_l( context_ch_c_l );
    if ( sourcefile_l ) {
	str += sourcefile_l->file_line_no_str(context_ch_c_l) + String(": ");
    }
    str += message_str;
    if ( sourcefile_l ) {
	str += ":\n";
	str += sourcefile_l->error_str( context_ch_c_l );
    }
    if ( busy_parsing() )
    	cerr << endl;
    cerr << str << endl;
}

void
warning( String message_str, char const* context_ch_c_l )
{
    message( "warning: " + message_str, context_ch_c_l );
}

void
error( String message_str, char const* context_ch_c_l )
{
    message( message_str, context_ch_c_l );
    // since when exits error again?
    // i-d say: error: errorlevel |= 1; -> no output upon error
    //          warning: recovery -> output (possibly wrong)
    if ( lexer )
        lexer->errorlevel_i_ |= 1;
//    exit( 1 );
}
