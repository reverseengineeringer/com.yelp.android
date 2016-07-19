package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.f;
import com.facebook.internal.a;

final class j$1
  extends h
{
  j$1(f paramf1, f paramf2)
  {
    super(paramf1);
  }
  
  public void a(a parama)
  {
    j.b(a);
  }
  
  public void a(a parama, Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      parama = j.a(paramBundle);
      if ((parama == null) || ("post".equalsIgnoreCase(parama)))
      {
        parama = j.b(paramBundle);
        j.a(a, parama);
      }
    }
    else
    {
      return;
    }
    if ("cancel".equalsIgnoreCase(parama))
    {
      j.b(a);
      return;
    }
    j.a(a, new FacebookException("UnknownError"));
  }
  
  public void a(a parama, FacebookException paramFacebookException)
  {
    j.a(a, paramFacebookException);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.j.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */