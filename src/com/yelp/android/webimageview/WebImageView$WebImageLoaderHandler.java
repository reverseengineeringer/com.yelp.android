package com.yelp.android.webimageview;

import android.os.Message;
import java.lang.ref.WeakReference;

public class WebImageView$WebImageLoaderHandler
  extends ImageLoaderHandler<WebImageView>
{
  private final WeakReference<WebImageView.ImageLoadedCallback> mCallback;
  String mUrl;
  
  public WebImageView$WebImageLoaderHandler(String paramString, WebImageView paramWebImageView, long paramLong, WebImageView.ImageLoadedCallback paramImageLoadedCallback)
  {
    super(paramWebImageView);
    mUrl = paramString;
    mCallback = new WeakReference(paramImageLoadedCallback);
    priority = paramLong;
  }
  
  public void handleMessage(Message paramMessage)
  {
    WebImageView localWebImageView = (WebImageView)getImageView();
    if (localWebImageView == null) {
      return;
    }
    try
    {
      if (mUrl.equals(WebImageView.access$000(localWebImageView)))
      {
        super.handleMessage(paramMessage);
        WebImageView.access$102(localWebImageView, true);
        paramMessage = (WebImageView.ImageLoadedCallback)mCallback.get();
        if (paramMessage != null) {
          paramMessage.imageLoaded(localWebImageView);
        }
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.WebImageView.WebImageLoaderHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */