package com.yelp.android.ui.util;

import java.io.IOException;

public class ImageProcessingTask$ImageProcessingException
  extends IOException
{
  private static final long serialVersionUID = 1L;
  public final ImageInputHelper.ImageSource mSource;
  
  public ImageProcessingTask$ImageProcessingException(ImageProcessingTask paramImageProcessingTask, String paramString, ImageInputHelper.ImageSource paramImageSource)
  {
    super(paramString);
    mSource = paramImageSource;
  }
  
  public String toString()
  {
    return String.format("Type:%s Message:%s Source:%s", new Object[] { "ImageProcessingTask", getMessage(), mSource });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ImageProcessingTask.ImageProcessingException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */