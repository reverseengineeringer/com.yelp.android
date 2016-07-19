package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

final class hb$4
  extends hb.a
{
  hb$4(Context paramContext, hb.b paramb)
  {
    super(null);
  }
  
  public void a()
  {
    SharedPreferences localSharedPreferences = hb.a(a);
    Bundle localBundle = new Bundle();
    localBundle.putInt("webview_cache_version", localSharedPreferences.getInt("webview_cache_version", 0));
    if (b != null) {
      b.a(localBundle);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hb.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */