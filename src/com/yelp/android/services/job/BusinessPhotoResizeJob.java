package com.yelp.android.services.job;

import com.path.android.jobqueue.b;
import com.path.android.jobqueue.d;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.n;
import java.util.List;

public class BusinessPhotoResizeJob
  extends YelpJob
{
  private final String mBusinessId;
  private final String mCaption;
  private final String mImageFilePath;
  private final ImageInputHelper.ImageSource mImageSource;
  private final List<ShareRequest.ShareType> mShareTypes;
  
  private BusinessPhotoResizeJob(String paramString1, ImageInputHelper.ImageSource paramImageSource, String paramString2, String paramString3, List<ShareRequest.ShareType> paramList)
  {
    super(new d(1).b().a("BusinessResizeUploadJob"));
    mBusinessId = paramString1;
    mImageSource = paramImageSource;
    mCaption = paramString2;
    mImageFilePath = paramString3;
    mShareTypes = paramList;
  }
  
  public static void launchJob(String paramString1, ImageInputHelper.ImageSource paramImageSource, String paramString2, String paramString3, List<ShareRequest.ShareType> paramList)
  {
    if (com.yelp.android.appdata.experiment.e.c.a(TwoBucketExperiment.Cohort.status_quo))
    {
      BusinessPhotoUploadJob.launchJob(paramString1, paramImageSource, paramString2, paramString3, paramList);
      return;
    }
    AppData.w().a(new BusinessPhotoResizeJob(paramString1, paramImageSource, paramString2, paramString3, paramList));
  }
  
  public void onCancel()
  {
    n.a(mImageFilePath, mBusinessId, getCreationTimeMillis());
    com.yelp.android.util.e.c(mImageFilePath);
  }
  
  public void onRun()
    throws Throwable
  {
    super.onRun();
    String str = ImageInputHelper.a(mImageFilePath, 2000);
    BusinessPhotoUploadJob.launchJob(mBusinessId, mImageSource, mCaption, str, mShareTypes);
  }
  
  public boolean shouldReRunOnThrowable(Throwable paramThrowable)
  {
    YelpLog.remoteError("Unable to scale image, cancelling upload.", (Exception)paramThrowable);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.BusinessPhotoResizeJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */