package com.bumptech.glide.load;

import android.os.Build.VERSION;

public enum DecodeFormat
{
  public static final DecodeFormat DEFAULT;
  
  static
  {
    $VALUES = new DecodeFormat[] { ALWAYS_ARGB_8888, PREFER_RGB_565 };
    if (Build.VERSION.SDK_INT > 19) {}
    for (DecodeFormat localDecodeFormat = ALWAYS_ARGB_8888;; localDecodeFormat = PREFER_RGB_565)
    {
      DEFAULT = localDecodeFormat;
      return;
    }
  }
  
  private DecodeFormat() {}
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.DecodeFormat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */