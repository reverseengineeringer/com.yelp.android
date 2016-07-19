package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.f;
import com.facebook.internal.a;

public abstract class h
{
  private f a;
  
  public h(f paramf)
  {
    a = paramf;
  }
  
  public void a(a parama)
  {
    if (a != null) {
      a.a();
    }
  }
  
  public abstract void a(a parama, Bundle paramBundle);
  
  public void a(a parama, FacebookException paramFacebookException)
  {
    if (a != null) {
      a.a(paramFacebookException);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */