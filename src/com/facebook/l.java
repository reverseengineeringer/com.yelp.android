package com.facebook;

import android.content.Intent;
import android.support.v4.content.m;
import com.facebook.internal.u;
import com.facebook.internal.v;

final class l
{
  private static volatile l a;
  private final m b;
  private final k c;
  private Profile d;
  
  l(m paramm, k paramk)
  {
    v.a(paramm, "localBroadcastManager");
    v.a(paramk, "profileCache");
    b = paramm;
    c = paramk;
  }
  
  static l a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new l(m.a(g.f()), new k());
      }
      return a;
    }
    finally {}
  }
  
  private void a(Profile paramProfile1, Profile paramProfile2)
  {
    Intent localIntent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
    localIntent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", paramProfile1);
    localIntent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", paramProfile2);
    b.a(localIntent);
  }
  
  private void a(Profile paramProfile, boolean paramBoolean)
  {
    Profile localProfile = d;
    d = paramProfile;
    if (paramBoolean)
    {
      if (paramProfile == null) {
        break label41;
      }
      c.a(paramProfile);
    }
    for (;;)
    {
      if (!u.a(localProfile, paramProfile)) {
        a(localProfile, paramProfile);
      }
      return;
      label41:
      c.b();
    }
  }
  
  void a(Profile paramProfile)
  {
    a(paramProfile, true);
  }
  
  Profile b()
  {
    return d;
  }
  
  boolean c()
  {
    boolean bool = false;
    Profile localProfile = c.a();
    if (localProfile != null)
    {
      a(localProfile, false);
      bool = true;
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.facebook.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */