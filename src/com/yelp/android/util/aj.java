package com.yelp.android.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import com.yelp.android.appdata.n;
import java.io.File;
import java.util.concurrent.TimeUnit;

public class aj
  extends MediaMetadataRetriever
{
  public aj(String paramString)
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
    paramString = new aj(paramString);
    int i = paramString.a();
    paramString.release();
    return i;
  }
  
  public static boolean a(File paramFile)
  {
    paramFile = new aj(paramFile.getAbsolutePath());
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
  
  @TargetApi(17)
  public int f()
  {
    if (n.a(17)) {
      return a(24);
    }
    return 0;
  }
  
  public boolean g()
  {
    return (c() > 0) && (d() > 0) && (a() > 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */