package com.google.android.gms.internal;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

class gl$1
  implements DialogInterface.OnClickListener
{
  gl$1(gl paramgl, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    gl.a(wM).startActivity(Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", wL), "Share via"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */