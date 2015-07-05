package com.google.android.gms.internal;

import android.content.Context;

final class fq$1
  implements Runnable
{
  fq$1(Context paramContext, fh paramfh, fs paramfs, gv.a parama, String paramString) {}
  
  public void run()
  {
    gu localgu = gu.a(nf, new ay(), false, false, null, uy.lO);
    localgu.setWillNotDraw(true);
    uz.b(localgu);
    gv localgv = localgu.dD();
    localgv.a("/invalidRequest", uz.uG);
    localgv.a("/loadAdURL", uz.uH);
    localgv.a("/log", cc.pX);
    localgv.a(uA);
    gr.S("Loading the JS library.");
    localgu.loadUrl(uB);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */