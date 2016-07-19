package com.facebook.share.internal;

import android.content.Intent;
import com.facebook.FacebookException;
import com.facebook.internal.u;

final class b$1
  implements b.c
{
  b$1(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void a(b paramb, FacebookException paramFacebookException)
  {
    if (paramFacebookException == null)
    {
      b.a(paramb, a, b, c);
      return;
    }
    u.a(b.f(), paramFacebookException);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */