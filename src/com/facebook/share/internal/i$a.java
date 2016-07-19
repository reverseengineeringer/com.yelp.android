package com.facebook.share.internal;

import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.ShareOpenGraphValueContainer;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideo;
import com.facebook.share.model.ShareVideoContent;

class i$a
{
  private boolean a = false;
  
  public void a(ShareLinkContent paramShareLinkContent)
  {
    i.a(paramShareLinkContent, this);
  }
  
  public void a(ShareOpenGraphAction paramShareOpenGraphAction)
  {
    i.a(paramShareOpenGraphAction, this);
  }
  
  public void a(ShareOpenGraphContent paramShareOpenGraphContent)
  {
    a = true;
    i.a(paramShareOpenGraphContent, this);
  }
  
  public void a(ShareOpenGraphObject paramShareOpenGraphObject)
  {
    i.a(paramShareOpenGraphObject, this);
  }
  
  public void a(ShareOpenGraphValueContainer paramShareOpenGraphValueContainer, boolean paramBoolean)
  {
    i.a(paramShareOpenGraphValueContainer, this, paramBoolean);
  }
  
  public void a(SharePhoto paramSharePhoto)
  {
    i.b(paramSharePhoto, this);
  }
  
  public void a(SharePhotoContent paramSharePhotoContent)
  {
    i.a(paramSharePhotoContent, this);
  }
  
  public void a(ShareVideo paramShareVideo)
  {
    i.a(paramShareVideo, this);
  }
  
  public void a(ShareVideoContent paramShareVideoContent)
  {
    i.a(paramShareVideoContent, this);
  }
  
  public boolean a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */