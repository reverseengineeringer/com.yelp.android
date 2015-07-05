package com.yelp.android.webimageview;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

public class ImageLoaderHandler<ImageView>
  extends Handler
{
  private final WeakReference<ImageView> mWeakImageView;
  protected long priority;
  
  public ImageLoaderHandler(ImageView paramImageView)
  {
    mWeakImageView = new WeakReference(paramImageView);
    priority = 0L;
  }
  
  ImageView getImageView()
  {
    return (ImageView)mWeakImageView.get();
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 0)
    {
      paramMessage = (Bitmap)paramMessage.getData().getParcelable("droidfu:extra_bitmap");
      if (mWeakImageView.get() != null) {
        ((WebImageView)mWeakImageView.get()).setImageBitmap(paramMessage);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageLoaderHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */