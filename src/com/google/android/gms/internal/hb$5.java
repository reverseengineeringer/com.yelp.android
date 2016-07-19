package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class hb$5
  extends hb.a
{
  hb$5(Context paramContext, boolean paramBoolean)
  {
    super(null);
  }
  
  public void a()
  {
    SharedPreferences.Editor localEditor = hb.a(a).edit();
    localEditor.putBoolean("content_url_opted_out", b);
    localEditor.apply();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hb.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */