package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ld;

class cb$a
  implements db.a
{
  cb$a(cb paramcb) {}
  
  public void a(ap paramap)
  {
    cb.a(asi, paramap.fb());
  }
  
  public void b(ap paramap)
  {
    cb.a(asi, paramap.fb());
    bh.V("Permanent failure dispatching hitId: " + paramap.fb());
  }
  
  public void c(ap paramap)
  {
    long l = paramap.pK();
    if (l == 0L) {
      cb.a(asi, paramap.fb(), cb.a(asi).currentTimeMillis());
    }
    while (l + 14400000L >= cb.a(asi).currentTimeMillis()) {
      return;
    }
    cb.a(asi, paramap.fb());
    bh.V("Giving up on failed hitId: " + paramap.fb());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cb.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */