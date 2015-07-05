package com.yelp.android.r;

import android.net.Uri;

class p
{
  public o a(Uri paramUri, int paramInt1, int paramInt2)
  {
    if ((!k.a(paramUri)) || (paramInt1 > 512) || (paramInt2 > 384)) {
      return null;
    }
    if (k.b(paramUri)) {
      return new o(new q());
    }
    return new o(new m());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.r.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */