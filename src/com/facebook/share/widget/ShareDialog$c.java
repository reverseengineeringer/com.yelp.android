package com.facebook.share.widget;

import android.os.Bundle;
import com.facebook.internal.a;
import com.facebook.internal.e;
import com.facebook.internal.f;
import com.facebook.internal.f.a;
import com.facebook.share.internal.i;
import com.facebook.share.internal.k;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.yelp.android.ay.a.a;

class ShareDialog$c
  extends f<ShareContent, a.a>.a
{
  private ShareDialog$c(ShareDialog paramShareDialog)
  {
    super(paramShareDialog);
  }
  
  private String c(ShareContent paramShareContent)
  {
    if ((paramShareContent instanceof ShareLinkContent)) {
      return "share";
    }
    if ((paramShareContent instanceof ShareOpenGraphContent)) {
      return "share_open_graph";
    }
    return null;
  }
  
  public Object a()
  {
    return ShareDialog.Mode.WEB;
  }
  
  public boolean a(ShareContent paramShareContent)
  {
    return (paramShareContent != null) && (ShareDialog.c(paramShareContent.getClass()));
  }
  
  public a b(ShareContent paramShareContent)
  {
    ShareDialog.a(b, ShareDialog.b(b), paramShareContent, ShareDialog.Mode.WEB);
    a locala = b.d();
    i.c(paramShareContent);
    if ((paramShareContent instanceof ShareLinkContent)) {}
    for (Bundle localBundle = k.a((ShareLinkContent)paramShareContent);; localBundle = k.a((ShareOpenGraphContent)paramShareContent))
    {
      e.a(locala, c(paramShareContent), localBundle);
      return locala;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.ShareDialog.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */