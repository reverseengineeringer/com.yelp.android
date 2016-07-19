package com.facebook.share.widget;

import com.facebook.internal.a;
import com.facebook.internal.e;
import com.facebook.internal.f;
import com.facebook.internal.f.a;
import com.facebook.share.internal.i;
import com.facebook.share.internal.k;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.yelp.android.ay.a.a;

class ShareDialog$a
  extends f<ShareContent, a.a>.a
{
  private ShareDialog$a(ShareDialog paramShareDialog)
  {
    super(paramShareDialog);
  }
  
  public Object a()
  {
    return ShareDialog.Mode.FEED;
  }
  
  public boolean a(ShareContent paramShareContent)
  {
    return paramShareContent instanceof ShareLinkContent;
  }
  
  public a b(ShareContent paramShareContent)
  {
    ShareDialog.a(b, ShareDialog.c(b), paramShareContent, ShareDialog.Mode.FEED);
    paramShareContent = (ShareLinkContent)paramShareContent;
    a locala = b.d();
    i.c(paramShareContent);
    e.a(locala, "feed", k.b(paramShareContent));
    return locala;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.ShareDialog.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */