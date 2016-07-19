package com.facebook.share.widget;

import com.facebook.FacebookException;
import com.facebook.share.internal.b;
import com.facebook.share.internal.b.c;

class LikeView$a
  implements b.c
{
  private boolean b;
  
  private LikeView$a(LikeView paramLikeView) {}
  
  public void a()
  {
    b = true;
  }
  
  public void a(b paramb, FacebookException paramFacebookException)
  {
    if (b) {
      return;
    }
    FacebookException localFacebookException = paramFacebookException;
    if (paramb != null)
    {
      if (!paramb.e()) {
        paramFacebookException = new FacebookException("Cannot use LikeView. The device may not be supported.");
      }
      LikeView.a(a, paramb);
      LikeView.c(a);
      localFacebookException = paramFacebookException;
    }
    if ((localFacebookException != null) && (LikeView.d(a) != null)) {
      LikeView.d(a).a(localFacebookException);
    }
    LikeView.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.LikeView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */