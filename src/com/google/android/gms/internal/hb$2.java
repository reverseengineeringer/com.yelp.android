package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

final class hb$2
  extends hb.a
{
  hb$2(Context paramContext, hb.b paramb)
  {
    super(null);
  }
  
  public void a()
  {
    SharedPreferences localSharedPreferences = hb.a(a);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("use_https", localSharedPreferences.getBoolean("use_https", true));
    if (b != null) {
      b.a(localBundle);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hb.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */