package com.google.android.gms.internal;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class dj$1
  implements DialogInterface.OnClickListener
{
  dj$1(dj paramdj, String paramString1, String paramString2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = (DownloadManager)dj.a(rr).getSystemService("download");
    try
    {
      paramDialogInterface.enqueue(rr.b(rp, rq));
      return;
    }
    catch (IllegalStateException paramDialogInterface)
    {
      gr.U("Could not store picture.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dj.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */