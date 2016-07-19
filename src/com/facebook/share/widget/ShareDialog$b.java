package com.facebook.share.widget;

import android.os.Bundle;
import com.facebook.internal.e;
import com.facebook.internal.e.a;
import com.facebook.internal.f.a;
import com.facebook.share.internal.i;
import com.facebook.share.model.ShareContent;
import com.yelp.android.ay.a.a;

class ShareDialog$b
  extends com.facebook.internal.f<ShareContent, a.a>.a
{
  private ShareDialog$b(ShareDialog paramShareDialog)
  {
    super(paramShareDialog);
  }
  
  public Object a()
  {
    return ShareDialog.Mode.NATIVE;
  }
  
  public boolean a(ShareContent paramShareContent)
  {
    return (paramShareContent != null) && (ShareDialog.a(paramShareContent.getClass()));
  }
  
  public com.facebook.internal.a b(final ShareContent paramShareContent)
  {
    ShareDialog.a(b, ShareDialog.a(b), paramShareContent, ShareDialog.Mode.NATIVE);
    i.b(paramShareContent);
    final com.facebook.internal.a locala = b.d();
    e.a(locala, new e.a()
    {
      public Bundle a()
      {
        return com.facebook.share.internal.f.a(locala.c(), paramShareContent, c);
      }
      
      public Bundle b()
      {
        return com.facebook.share.internal.a.a(locala.c(), paramShareContent, c);
      }
    }, ShareDialog.b(paramShareContent.getClass()));
    return locala;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.ShareDialog.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */