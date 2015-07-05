package com.yelp.android.services.job;

import android.text.TextUtils;
import com.path.android.jobqueue.c;
import com.path.android.jobqueue.h;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ha;
import com.yelp.android.appdata.webrequests.hb;
import com.yelp.android.appdata.webrequests.hc;
import com.yelp.android.appdata.webrequests.hd;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.aj;
import com.yelp.android.util.f;
import com.yelp.android.util.s;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class VideoUploadJob
  extends YelpJob
{
  private final String mBusinessId;
  private final String mCaption;
  private final boolean mShouldDeleteFile;
  private final String mVideoFilePath;
  
  private VideoUploadJob(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    super(new h(1).a().b().a("VideoUploadJob"));
    mVideoFilePath = paramString1;
    mCaption = paramString2;
    mBusinessId = paramString3;
    mShouldDeleteFile = paramBoolean;
    AppData.a(EventIri.UploadVideoAttempt, a(null));
  }
  
  private hd a()
  {
    Object localObject = new hc(mBusinessId, mVideoFilePath);
    try
    {
      localObject = (hd)((hc)localObject).executeSynchronously(AppData.b().m(), AppData.b().o(), true);
      return (hd)localObject;
    }
    catch (YelpException localYelpException)
    {
      a(VideoUploadJob.UploadStep.UPLOAD_URL, null);
      throw localYelpException;
    }
  }
  
  private Map<String, Object> a(String paramString)
  {
    long l1 = new File(mVideoFilePath).length();
    Object localObject = new aj(mVideoFilePath);
    int i = ((aj)localObject).c();
    int j = ((aj)localObject).d();
    long l2 = ((aj)localObject).b();
    ((aj)localObject).release();
    localObject = new HashMap();
    ((Map)localObject).put("duration_sec", Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(getTimeSinceCreation())));
    ((Map)localObject).put("video_length_sec", Long.valueOf(l2));
    ((Map)localObject).put("size_bytes", Long.valueOf(l1));
    ((Map)localObject).put("width_pixels", Integer.valueOf(i));
    ((Map)localObject).put("height_pixels", Integer.valueOf(j));
    ((Map)localObject).put("business_id", mBusinessId);
    ((Map)localObject).put("wifi", Boolean.valueOf(s.a(AppData.b())));
    ((Map)localObject).put("md5_hash", f.a(mVideoFilePath));
    if (!TextUtils.isEmpty(paramString)) {
      ((Map)localObject).put("video_id", paramString);
    }
    return (Map<String, Object>)localObject;
  }
  
  private void a(hd paramhd)
  {
    hb localhb = new hb(a, mVideoFilePath, d);
    try
    {
      localhb.executeSynchronously(AppData.b().m(), AppData.b().o(), true);
      return;
    }
    catch (YelpException localYelpException)
    {
      a(VideoUploadJob.UploadStep.UPLOAD_TO_S3, b);
      throw localYelpException;
    }
  }
  
  private void a(VideoUploadJob.UploadStep paramUploadStep, String paramString)
  {
    paramString = a(paramString);
    paramString.put("step", paramUploadStep.toString());
    AppData.a(EventIri.UploadVideoFailure, paramString);
  }
  
  private void b(hd paramhd)
  {
    ha localha = new ha(mBusinessId, b, mCaption);
    try
    {
      localha.executeSynchronously(AppData.b().m(), AppData.b().o(), true);
      AppData.a(EventIri.UploadVideoSuccess, a(b));
      return;
    }
    catch (YelpException localYelpException)
    {
      a(VideoUploadJob.UploadStep.MARK_UPLOAD_COMPLETE, b);
      throw localYelpException;
    }
  }
  
  public static void launchJob(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    AppData.r().a(new VideoUploadJob(paramString1, paramString2, paramString3, paramBoolean));
  }
  
  protected int getRetryLimit()
  {
    return 14;
  }
  
  public void onCancel()
  {
    if ((mShouldDeleteFile) && (!new File(mVideoFilePath).delete())) {
      YelpLog.e("VideoUploadJob", "Failed to delete video file after onCancel is called: " + mVideoFilePath);
    }
  }
  
  public void onRun()
  {
    hd localhd = a();
    if (c) {
      AppData.a(EventIri.UploadVideoDuplicate, a(b));
    }
    do
    {
      return;
      a(localhd);
      b(localhd);
    } while ((!mShouldDeleteFile) || (new File(mVideoFilePath).delete()));
    YelpLog.e("VideoUploadJob", "Failed to delete video file after successful video upload: " + mVideoFilePath);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.VideoUploadJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */