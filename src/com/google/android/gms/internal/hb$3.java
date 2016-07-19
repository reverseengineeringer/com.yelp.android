package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class hb$3
  extends hb.a
{
  hb$3(Context paramContext, int paramInt)
  {
    super(null);
  }
  
  public void a()
  {
    SharedPreferences.Editor localEditor = hb.a(a).edit();
    localEditor.putInt("webview_cache_version", b);
    localEditor.apply();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hb.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */