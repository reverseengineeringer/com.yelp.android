package com.google.android.gms.internal;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class el$1
  implements DialogInterface.OnClickListener
{
  el$1(el paramel, String paramString1, String paramString2) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = (DownloadManager)el.a(c).getSystemService("download");
    try
    {
      paramDialogInterface.enqueue(c.a(a, b));
      return;
    }
    catch (IllegalStateException paramDialogInterface)
    {
      c.b("Could not store picture.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.el.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */