package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

final class hb$6
  extends hb.a
{
  hb$6(Context paramContext, hb.b paramb)
  {
    super(null);
  }
  
  public void a()
  {
    SharedPreferences localSharedPreferences = hb.a(a);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("content_url_opted_out", localSharedPreferences.getBoolean("content_url_opted_out", true));
    if (b != null) {
      b.a(localBundle);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hb.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */