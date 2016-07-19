package com.facebook.share.internal;

import com.facebook.FacebookException;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;

class i$b
  extends i.a
{
  private i$b()
  {
    super(null);
  }
  
  public void a(SharePhoto paramSharePhoto)
  {
    i.a(paramSharePhoto, this);
  }
  
  public void a(SharePhotoContent paramSharePhotoContent)
  {
    throw new FacebookException("Cannot share SharePhotoContent via web sharing dialogs");
  }
  
  public void a(ShareVideoContent paramShareVideoContent)
  {
    throw new FacebookException("Cannot share ShareVideoContent via web sharing dialogs");
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.i.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */