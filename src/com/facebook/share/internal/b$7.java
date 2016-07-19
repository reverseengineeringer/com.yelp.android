package com.facebook.share.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.facebook.AccessToken;
import com.facebook.c;
import com.facebook.g;
import com.facebook.internal.i;
import java.util.concurrent.ConcurrentHashMap;

final class b$7
  extends c
{
  protected void a(AccessToken paramAccessToken1, AccessToken paramAccessToken2)
  {
    paramAccessToken1 = g.f();
    if (paramAccessToken2 == null)
    {
      b.a((b.g() + 1) % 1000);
      paramAccessToken1.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", b.g()).apply();
      b.h().clear();
      b.i().a();
    }
    b.a(null, "com.facebook.sdk.LikeActionController.DID_RESET");
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */