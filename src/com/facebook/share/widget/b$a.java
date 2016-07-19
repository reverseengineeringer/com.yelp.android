package com.facebook.share.widget;

import android.os.Bundle;
import com.facebook.internal.e;
import com.facebook.internal.e.a;
import com.facebook.internal.f.a;
import com.facebook.share.internal.i;
import com.facebook.share.model.ShareContent;
import com.yelp.android.ay.a.a;

class b$a
  extends com.facebook.internal.f<ShareContent, a.a>.a
{
  private b$a(b paramb)
  {
    super(paramb);
  }
  
  public boolean a(ShareContent paramShareContent)
  {
    return (paramShareContent != null) && (b.a(paramShareContent.getClass()));
  }
  
  public com.facebook.internal.a b(final ShareContent paramShareContent)
  {
    i.a(paramShareContent);
    final com.facebook.internal.a locala = b.d();
    final boolean bool = b.e();
    b.a(b);
    e.a(locala, new e.a()
    {
      public Bundle a()
      {
        return com.facebook.share.internal.f.a(locala.c(), paramShareContent, bool);
      }
      
      public Bundle b()
      {
        return com.facebook.share.internal.a.a(locala.c(), paramShareContent, bool);
      }
    }, b.b(paramShareContent.getClass()));
    return locala;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */