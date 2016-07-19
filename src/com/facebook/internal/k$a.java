package com.facebook.internal;

import android.content.Context;
import android.net.Uri;

public class k$a
{
  private Context a;
  private Uri b;
  private k.b c;
  private boolean d;
  private Object e;
  
  public k$a(Context paramContext, Uri paramUri)
  {
    v.a(paramUri, "imageUri");
    a = paramContext;
    b = paramUri;
  }
  
  public a a(k.b paramb)
  {
    c = paramb;
    return this;
  }
  
  public a a(Object paramObject)
  {
    e = paramObject;
    return this;
  }
  
  public a a(boolean paramBoolean)
  {
    d = paramBoolean;
    return this;
  }
  
  public k a()
  {
    return new k(this, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */