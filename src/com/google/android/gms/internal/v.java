package com.google.android.gms.internal;

import android.os.Bundle;

@ey
public class v
{
  private v.a mk;
  private boolean ml;
  private boolean mm;
  
  public v()
  {
    Bundle localBundle = ga.bN();
    boolean bool1 = bool2;
    if (localBundle != null)
    {
      bool1 = bool2;
      if (localBundle.getBoolean("gads:block_autoclicks", false)) {
        bool1 = true;
      }
    }
    mm = bool1;
  }
  
  public v(boolean paramBoolean)
  {
    mm = paramBoolean;
  }
  
  public void a(v.a parama)
  {
    mk = parama;
  }
  
  public void av()
  {
    ml = true;
  }
  
  public boolean az()
  {
    return (!mm) || (ml);
  }
  
  public void d(String paramString)
  {
    gr.S("Action was blocked because no click was detected.");
    if (mk != null) {
      mk.e(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */