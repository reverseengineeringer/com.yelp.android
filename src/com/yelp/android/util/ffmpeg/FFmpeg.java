package com.yelp.android.util.ffmpeg;

import android.content.Context;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.f;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.e;
import com.yelp.android.util.t;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

public class FFmpeg
{
  private static Boolean a;
  
  public static Process a(Context paramContext, String paramString)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(b(paramContext).getAbsolutePath());
      localStringBuilder.append(" ");
      localStringBuilder.append(paramString);
      paramContext = Runtime.getRuntime().exec(localStringBuilder.toString());
      return paramContext;
    }
    catch (IOException paramContext)
    {
      YelpLog.remoteError("FFmpeg", "FFmpeg not loaded or cannot be executed!", paramContext);
    }
    return null;
  }
  
  private static String a()
  {
    String str = null;
    if (com.yelp.android.util.b.a()) {
      str = "arm/pie/ffmpeg";
    }
    while (!com.yelp.android.util.b.b()) {
      return str;
    }
    if (f.a(21))
    {
      YelpLog.remoteError("FFmpeg", "There was an x86 device with API 21+");
      return null;
    }
    return "x86/ffmpeg";
  }
  
  public static boolean a(Context paramContext)
  {
    if (c(paramContext))
    {
      AppData.a("FFmpeg", "FFmpeg already exists and works.", new Object[0]);
      return true;
    }
    a = null;
    AppData.a("FFmpeg", "os.arch = " + System.getProperty("os.arch"), new Object[0]);
    String str = a();
    if (str == null)
    {
      YelpLog.remoteError("FFmpeg", "CPU not supported.");
      a = Boolean.valueOf(false);
      return false;
    }
    AppData.a("FFmpeg", "Copying FFmpeg from asset '" + str + "'.", new Object[0]);
    if (!e.a(str, "ffmpeg"))
    {
      YelpLog.remoteError("FFmpeg", "Couldn't copy FFmpeg.");
      a = Boolean.valueOf(false);
      return false;
    }
    return c(paramContext);
  }
  
  public static boolean a(File paramFile)
  {
    AppData.a("FFmpeg", "Verifying file is supported: " + paramFile.getAbsolutePath(), new Object[0]);
    if (!t.a(paramFile)) {
      return false;
    }
    File localFile = new File(AppData.b().getFilesDir(), "test.webm");
    AtomicBoolean localAtomicBoolean = new AtomicBoolean(false);
    paramFile = new b(paramFile, 0, 10, 320, 320, 0, null, localFile);
    paramFile.a(new FFmpeg.1(localAtomicBoolean));
    paramFile.run();
    return localAtomicBoolean.get();
  }
  
  private static File b(Context paramContext)
  {
    return new File(paramContext.getFilesDir(), "ffmpeg");
  }
  
  private static boolean c(Context paramContext)
  {
    if (a != null) {
      return a.booleanValue();
    }
    a = Boolean.valueOf(false);
    File localFile = b(paramContext);
    if (!localFile.exists()) {
      YelpLog.remoteError("FFmpeg", "ffmpeg doesn't exist.");
    }
    for (;;)
    {
      return a.booleanValue();
      if (!localFile.setExecutable(true))
      {
        AppData.a("FFmpeg", "Couldn't make ffmpeg executable.", new Object[0]);
      }
      else
      {
        AppData.a("FFmpeg", "ffmpeg is executable, testing -version.", new Object[0]);
        paramContext = new c().a("-version", new Object[0]).a(paramContext);
        if (paramContext != null)
        {
          try
          {
            if (paramContext.waitFor() != 0) {
              break label133;
            }
            a = Boolean.valueOf(true);
          }
          catch (InterruptedException paramContext)
          {
            YelpLog.remoteError("FFmpeg", "'ffmpeg -version' can't be executed.", paramContext);
          }
        }
        else
        {
          label133:
          AppData.a("FFmpeg", "'ffmpeg -version' failed!", new Object[0]);
          AppData.a("FFmpeg", paramContext);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ffmpeg.FFmpeg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */