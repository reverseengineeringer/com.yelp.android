package com.yelp.android.util.ffmpeg;

public enum FFmpeg$PixelFormat
{
  YUV420P("yuv420p");
  
  private final String mFFmpegArgName;
  
  private FFmpeg$PixelFormat(String paramString)
  {
    mFFmpegArgName = paramString;
  }
  
  public String toString()
  {
    return mFFmpegArgName;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ffmpeg.FFmpeg.PixelFormat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */