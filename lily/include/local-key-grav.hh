/*
  local-key-grav.hh -- declare Local_key_engraver

  (c) 1997 Han-Wen Nienhuys <hanwen@stack.nl>
*/


#ifndef LOCALKEYGRAV_HH
#define LOCALKEYGRAV_HH

#include "engraver.hh"
#include "key.hh"
#include "parray.hh"

struct Local_key_engraver : Engraver {
    Key local_key_;
    Key const *key_C_;
    Array<Note_req* > mel_l_arr_;
    Array<Item* > support_l_arr_;
    Link_array<Item  > forced_l_arr_;
    Link_array<Item > tied_l_arr_;
    /* *************** */
    virtual void do_process_requests();
    virtual void acknowledge_element(Score_elem_info);
    virtual void do_pre_move_processing();
    Local_key_engraver();
    DECLARE_MY_RUNTIME_TYPEINFO;
};

#endif // LOCALKEYGRAV_HH
