/*
  notehead.hh -- part of LilyPond

  (c) 1996,97 Han-Wen Nienhuys
*/

#ifndef NOTEHEAD_HH
#define NOTEHEAD_HH
#include "item.hh"

/// ball at the end of the stem
struct Notehead : Item {
    const char * name() const;
    const char* defined_ch_c_l_m; //sorry, trying to find error in martien.ly
    int position;
    /// -1 = lowest, 0 = inside, 1 = top
    int extremal;
    /// needed for the help-lines
    int staff_size;
    int dots;
    int balltype;
    int x_dir;
    
    /****************/
    
    void set_rhythmic(Rhythmic_req *);
    Notehead(int staff_size);
    /**
      position of top line (5 linestaff: 8)
      */

    void do_print()const;
    static int compare(Notehead*&a, Notehead*&b) ;
    Molecule* brew_molecule_p()const;
};
/**
  takes care of:

  * help lines  
  * proper placing of dots 

  */
#endif // NOTEHEAD_HH

