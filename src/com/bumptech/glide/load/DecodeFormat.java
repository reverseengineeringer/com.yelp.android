package com.bumptech.glide.load;

public enum DecodeFormat
{
  ALWAYS_ARGB_8888,  PREFER_ARGB_8888,  PREFER_RGB_565;
  
  public static final DecodeFormat DEFAULT = PREFER_RGB_565;
  
  private DecodeFormat() {}
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.DecodeFormat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */