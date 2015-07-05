package com.yelp.android.services;

import com.yelp.android.appdata.AppData;
import com.yelp.android.util.ffmpeg.a;
import com.yelp.android.util.ffmpeg.f;
import java.io.File;
import java.util.TreeSet;
import java.util.concurrent.ExecutorService;

class u
  implements f
{
  private TreeSet<File> b = new TreeSet();
  
  u(VideoTrimService paramVideoTrimService) {}
  
  public void a(File paramFile)
  {
    try
    {
      AppData.a("VideoTrimService", "chunk encoded " + paramFile, new Object[0]);
      b.add(paramFile);
      if (b.size() == VideoTrimService.f(a))
      {
        paramFile = new File[VideoTrimService.f(a)];
        b.toArray(paramFile);
        paramFile = new a(paramFile, VideoTrimService.b(a));
        paramFile.a(VideoTrimService.g(a));
        VideoTrimService.h(a).execute(paramFile);
        AppData.a("VideoTrimService", "concatenation started", new Object[0]);
      }
      return;
    }
    finally
    {
      paramFile = finally;
      throw paramFile;
    }
  }
  
  public void b(File paramFile)
  {
    AppData.a("VideoTrimService", "chunk failed " + paramFile, new Object[0]);
    VideoTrimService.e(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */