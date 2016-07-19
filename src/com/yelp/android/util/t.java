package com.yelp.android.util;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import java.io.File;
import java.util.concurrent.TimeUnit;

public class t
  extends MediaMetadataRetriever
{
  public t(String paramString)
  {
    setDataSource(paramString);
  }
  
  private int a(int paramInt)
  {
    try
    {
      paramInt = Integer.parseInt(extractMetadata(paramInt));
      return paramInt;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return -1;
  }
  
  public static int a(String paramString)
  {
    paramString = new t(paramString);
    int i = paramString.a();
    paramString.release();
    return i;
  }
  
  public static boolean a(File paramFile)
  {
    paramFile = new t(paramFile.getAbsolutePath());
    boolean bool = paramFile.g();
    paramFile.release();
    return bool;
  }
  
  public int a()
  {
    return a(9);
  }
  
  public Bitmap a(long paramLong)
  {
    return getFrameAtTime(TimeUnit.MILLISECONDS.toMicros(paramLong), 2);
  }
  
  public long b()
  {
    return TimeUnit.MILLISECONDS.toSeconds(a());
  }
  
  public int c()
  {
    return a(18);
  }
  
  public int d()
  {
    return a(19);
  }
  
  public boolean e()
  {
    int i = f();
    return (i == 90) || (i == 270);
  }
  
  public int f()
  {
    return a(24);
  }
  
  public boolean g()
  {
    return (c() > 0) && (d() > 0) && (a() > 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */