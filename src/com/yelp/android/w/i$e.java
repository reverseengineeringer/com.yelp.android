package com.yelp.android.w;

import android.net.Uri;

class i$e
{
  public i.d a(Uri paramUri, int paramInt1, int paramInt2)
  {
    if ((!i.a(paramUri)) || (paramInt1 > 512) || (paramInt2 > 384)) {
      return null;
    }
    if (i.b(paramUri)) {
      return new i.d(new i.f());
    }
    return new i.d(new i.b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.i.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */