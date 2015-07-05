package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.AppEventListener;

@ey
public final class ba
  extends bf.a
{
  private final AppEventListener os;
  
  public ba(AppEventListener paramAppEventListener)
  {
    os = paramAppEventListener;
  }
  
  public void onAppEvent(String paramString1, String paramString2)
  {
    os.onAppEvent(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */