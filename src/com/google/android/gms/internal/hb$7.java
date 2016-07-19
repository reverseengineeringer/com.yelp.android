package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class hb$7
  extends hb.a
{
  hb$7(Context paramContext, String paramString)
  {
    super(null);
  }
  
  public void a()
  {
    SharedPreferences.Editor localEditor = hb.a(a).edit();
    localEditor.putString("content_url_hashes", b);
    localEditor.apply();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hb.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */