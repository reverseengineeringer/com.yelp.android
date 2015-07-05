package com.yelp.android.services;

import com.yelp.android.appdata.AppData;
import com.yelp.android.services.job.VideoUploadJob;
import com.yelp.android.util.ffmpeg.f;
import java.io.File;

class t
  implements f
{
  t(VideoTrimService paramVideoTrimService) {}
  
  public void a(File paramFile)
  {
    AppData.a("VideoTrimService", "Trimming succeeded, creating video upload job.", new Object[0]);
    VideoTrimService.a(a);
    VideoUploadJob.launchJob(VideoTrimService.b(a).getAbsolutePath(), VideoTrimService.c(a), VideoTrimService.d(a), true);
  }
  
  public void b(File paramFile)
  {
    VideoTrimService.e(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */