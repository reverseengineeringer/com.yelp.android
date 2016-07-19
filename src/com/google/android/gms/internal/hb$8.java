package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;

final class hb$8
  extends hb.a
{
  hb$8(Context paramContext, hb.b paramb)
  {
    super(null);
  }
  
  public void a()
  {
    SharedPreferences localSharedPreferences = hb.a(a);
    Bundle localBundle = new Bundle();
    localBundle.putString("content_url_hashes", localSharedPreferences.getString("content_url_hashes", ""));
    if (b != null) {
      b.a(localBundle);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hb.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */