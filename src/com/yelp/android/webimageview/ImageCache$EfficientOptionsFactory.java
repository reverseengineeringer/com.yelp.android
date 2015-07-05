package com.yelp.android.webimageview;

import android.graphics.BitmapFactory.Options;

class ImageCache$EfficientOptionsFactory
  extends ImageCache.OptionsFactory
{
  private ImageCache$EfficientOptionsFactory()
  {
    super(null);
  }
  
  public BitmapFactory.Options getOptions()
  {
    BitmapFactory.Options localOptions = super.getOptions();
    inInputShareable = true;
    inPurgeable = true;
    return localOptions;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageCache.EfficientOptionsFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */