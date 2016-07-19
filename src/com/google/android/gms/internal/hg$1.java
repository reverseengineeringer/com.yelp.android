package com.google.android.gms.internal;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.google.android.gms.ads.internal.s;

class hg$1
  implements DialogInterface.OnClickListener
{
  hg$1(hg paramhg, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    s.e().a(hg.a(b), Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", a), "Share via"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hg.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */