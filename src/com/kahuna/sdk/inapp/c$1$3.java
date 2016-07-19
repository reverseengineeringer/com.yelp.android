package com.kahuna.sdk.inapp;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.List;
import java.util.Map;

class c$1$3
  implements DialogInterface.OnClickListener
{
  c$1$3(c.1 param1) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if (c.a(a.c) != null)
      {
        paramDialogInterface = (a)((d)c.a(a.c).d().get(0)).h().get("button1");
        c.a(a.c, paramDialogInterface);
      }
      c.a(a.c, a.a, true);
      return;
    }
    catch (Throwable paramDialogInterface)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.c.1.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */