package com.yelp.android.services.job;

import android.text.TextUtils;
import com.path.android.jobqueue.b;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.fr;
import com.yelp.android.appdata.webrequests.fs;
import com.yelp.android.appdata.webrequests.ft;
import com.yelp.android.appdata.webrequests.ft.a;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile.a;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.l;
import com.yelp.android.util.t;
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
    super(new com.path.android.jobqueue.d(1).a().b().a("VideoUploadJob"));
    mVideoFilePath = paramString1;
    mCaption = paramString2;
    mBusinessId = paramString3;
    mShouldDeleteFile = paramBoolean;
    AppData.a(EventIri.UploadVideoAttempt, a(null));
  }
  
  private ft.a a()
    throws YelpException
  {
    Object localObject = new ft(mBusinessId, mVideoFilePath);
    try
    {
      localObject = (ft.a)((ft)localObject).a(AppData.b().q(), AppData.b().t(), true);
      return (ft.a)localObject;
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
    Object localObject = new t(mVideoFilePath);
    int i = ((t)localObject).c();
    int j = ((t)localObject).d();
    long l2 = ((t)localObject).b();
    ((t)localObject).release();
    localObject = new HashMap();
    ((Map)localObject).put("duration_sec", Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(getTimeSinceCreation())));
    ((Map)localObject).put("video_length_sec", Long.valueOf(l2));
    ((Map)localObject).put("size_bytes", Long.valueOf(l1));
    ((Map)localObject).put("width_pixels", Integer.valueOf(i));
    ((Map)localObject).put("height_pixels", Integer.valueOf(j));
    ((Map)localObject).put("business_id", mBusinessId);
    ((Map)localObject).put("wifi", Boolean.valueOf(l.a(AppData.b())));
    ((Map)localObject).put("md5_hash", com.yelp.android.util.d.a(mVideoFilePath));
    ((Map)localObject).put("batch_size", Integer.valueOf(AppData.b().f().aa()));
    if (!TextUtils.isEmpty(paramString)) {
      ((Map)localObject).put("video_id", paramString);
    }
    return (Map<String, Object>)localObject;
  }
  
  private void a(ft.a parama)
    throws YelpException
  {
    fs localfs = new fs(a, mVideoFilePath, d);
    try
    {
      localfs.a(AppData.b().q(), AppData.b().t(), true);
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
    paramString.put("batch_size", Integer.valueOf(AppData.b().f().aa()));
    AppData.a(EventIri.UploadVideoFailure, paramString);
  }
  
  private void b(ft.a parama)
    throws YelpException
  {
    Object localObject = new fr(mBusinessId, b, mCaption);
    try
    {
      ((fr)localObject).a(AppData.b().q(), AppData.b().t(), true);
      AppData.a(EventIri.UploadVideoSuccess, a(b));
      localObject = AppData.b().q().p();
      if (localObject != null)
      {
        ((User)localObject).c(1);
        new ActivityUserProfile.a().a(AppData.b());
      }
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
    AppData.w().a(new VideoUploadJob(paramString1, paramString2, paramString3, paramBoolean));
  }
  
  public void onCancel()
  {
    if ((mShouldDeleteFile) && (!new File(mVideoFilePath).delete())) {
      YelpLog.e("VideoUploadJob", "Failed to delete video file after onCancel is called: " + mVideoFilePath);
    }
  }
  
  public void onRun()
    throws Throwable
  {
    super.onRun();
    ft.a locala = a();
    if (c)
    {
      AppData.a(EventIri.UploadVideoDuplicate, a(b));
      AppData.a("VideoUploadJob", "Duplicate video.", new Object[0]);
    }
    do
    {
      return;
      a(locala);
      b(locala);
    } while ((!mShouldDeleteFile) || (new File(mVideoFilePath).delete()));
    YelpLog.e("VideoUploadJob", "Failed to delete video file after successful video upload: " + mVideoFilePath);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.VideoUploadJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */