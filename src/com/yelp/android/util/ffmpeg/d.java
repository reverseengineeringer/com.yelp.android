package com.yelp.android.util.ffmpeg;

import android.content.Context;
import android.graphics.Rect;
import com.yelp.android.appdata.AppData;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class d
{
  private final File a;
  private final File b;
  private final List<String> c = new ArrayList();
  private final List<String> d = new ArrayList();
  private FFmpeg.LogLevel e;
  
  public d()
  {
    a = null;
    b = null;
  }
  
  public d(File paramFile1, File paramFile2)
  {
    a = paramFile1;
    b = paramFile2;
  }
  
  private static String g(int paramInt)
  {
    long l1 = TimeUnit.MILLISECONDS.toHours(paramInt);
    paramInt = (int)(paramInt - TimeUnit.HOURS.toMillis(l1));
    long l2 = TimeUnit.MILLISECONDS.toMinutes(paramInt);
    paramInt = (int)(paramInt - TimeUnit.MINUTES.toMillis(l2));
    long l3 = TimeUnit.MILLISECONDS.toSeconds(paramInt);
    paramInt = (int)(paramInt - TimeUnit.SECONDS.toMillis(l3));
    return String.format(Locale.US, "%02d:%02d:%02d.%03d", new Object[] { Long.valueOf(l1), Long.valueOf(l2), Long.valueOf(l3), Integer.valueOf(paramInt) });
  }
  
  public d a()
  {
    return a("-y", new Object[0]);
  }
  
  public d a(int paramInt)
  {
    return a("-ss %s", new Object[] { g(paramInt) });
  }
  
  public d a(int paramInt1, int paramInt2)
  {
    return b(String.format("scale=%dx%d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }));
  }
  
  public d a(Rect paramRect)
  {
    if (paramRect == null) {
      return this;
    }
    return b(String.format("crop=w=%d:h=%d:x=%d:y=%d", new Object[] { Integer.valueOf(paramRect.width()), Integer.valueOf(paramRect.height()), Integer.valueOf(left), Integer.valueOf(top) }));
  }
  
  public d a(FFmpeg.PixelFormat paramPixelFormat)
  {
    if (paramPixelFormat == null) {
      return this;
    }
    return a("-pix_fmt %s", new Object[] { paramPixelFormat });
  }
  
  public d a(FFmpeg.TransposeDirection paramTransposeDirection)
  {
    if (paramTransposeDirection == null) {
      return this;
    }
    return b(String.format("transpose=%s", new Object[] { paramTransposeDirection }));
  }
  
  public d a(File paramFile)
  {
    return a("-f concat -i %s", new Object[] { paramFile.getAbsolutePath() });
  }
  
  public d a(String paramString)
  {
    return a("-codec %s", new Object[] { paramString });
  }
  
  public d a(String paramString, Object... paramVarArgs)
  {
    c.add(String.format(paramString, paramVarArgs));
    return this;
  }
  
  public Process a(Context paramContext)
  {
    AppData.a("FFmpegProcessBuilder", toString(), new Object[0]);
    return FFmpeg.a(paramContext, toString());
  }
  
  public d b()
  {
    return a("-ac 1", new Object[0]);
  }
  
  public d b(int paramInt)
  {
    return a("-to %s", new Object[] { g(paramInt) });
  }
  
  public d b(String paramString)
  {
    d.add(paramString);
    return this;
  }
  
  public d c(int paramInt)
  {
    return a("-ar %d", new Object[] { Integer.valueOf(paramInt) });
  }
  
  public d d(int paramInt)
  {
    return a("-ab %dk", new Object[] { Integer.valueOf(paramInt) });
  }
  
  public d e(int paramInt)
  {
    return a("-r %d", new Object[] { Integer.valueOf(paramInt) });
  }
  
  public d f(int paramInt)
  {
    return a("-vb %dk", new Object[] { Integer.valueOf(paramInt) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (a != null) {
      localStringBuilder.append("-i ").append(a.getAbsolutePath());
    }
    if (d.size() > 0)
    {
      localObject = new StringBuilder(" -vf ");
      ((StringBuilder)localObject).append((String)d.get(0));
      int i = 1;
      while (i < d.size())
      {
        ((StringBuilder)localObject).append(",").append((String)d.get(i));
        i += 1;
      }
      localStringBuilder.append(((StringBuilder)localObject).toString());
    }
    Object localObject = c.iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      localStringBuilder.append(" ").append(str);
    }
    if (e != null) {
      localStringBuilder.append(String.format(" -loglevel %s", new Object[] { e.toString() }));
    }
    if (b != null) {
      localStringBuilder.append(" ").append(b.getAbsolutePath());
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ffmpeg.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */