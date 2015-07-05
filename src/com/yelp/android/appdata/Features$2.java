package com.yelp.android.appdata;

import android.content.Context;
import com.yelp.android.util.ffmpeg.FFmpeg;

 enum Features$2
{
  Features$2(String paramString1)
  {
    super(paramString, paramInt, paramString1, null);
  }
  
  protected boolean isEnabled(Context paramContext)
  {
    return (n.a(14)) && (FFmpeg.a(paramContext));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.Features.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */