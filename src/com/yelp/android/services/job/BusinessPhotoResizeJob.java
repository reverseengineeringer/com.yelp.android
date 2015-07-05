package com.yelp.android.services.job;

import com.path.android.jobqueue.h;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.l;
import com.yelp.android.util.x;
import java.util.List;

public class BusinessPhotoResizeJob
  extends YelpJob
{
  private final String mBusinessId;
  private final String mCaption;
  private final String mImageFilePath;
  private final List<ShareRequest.ShareType> mShareTypes;
  
  private BusinessPhotoResizeJob(String paramString1, String paramString2, String paramString3, List<ShareRequest.ShareType> paramList)
  {
    super(new h(1).b().a("BusinessResizeUploadJob"));
    mBusinessId = paramString1;
    mCaption = paramString2;
    mImageFilePath = paramString3;
    mShareTypes = paramList;
  }
  
  public static void launchJob(String paramString1, String paramString2, String paramString3, List<ShareRequest.ShareType> paramList)
  {
    if (com.yelp.android.appdata.experiment.c.c.a(TwoBucketExperiment.Cohort.status_quo))
    {
      BusinessPhotoUploadJob.launchJob(paramString1, paramString2, paramString3, paramList);
      return;
    }
    AppData.r().a(new BusinessPhotoResizeJob(paramString1, paramString2, paramString3, paramList));
  }
  
  public void onCancel()
  {
    x.a(mImageFilePath, mBusinessId, getCreationTimeMillis());
    l.c(mImageFilePath);
  }
  
  public void onRun()
  {
    String str = ImageInputHelper.a(mImageFilePath, 2000);
    BusinessPhotoUploadJob.launchJob(mBusinessId, mCaption, str, mShareTypes);
  }
  
  public boolean shouldReRunOnThrowable(Throwable paramThrowable)
  {
    YelpLog.error("Unable to scale image, cancelling upload.", (Exception)paramThrowable);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.BusinessPhotoResizeJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */