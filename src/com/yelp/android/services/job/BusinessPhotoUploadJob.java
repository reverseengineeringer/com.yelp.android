package com.yelp.android.services.job;

import com.path.android.jobqueue.c;
import com.path.android.jobqueue.h;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.aa;
import com.yelp.android.serializable.Photo;
import com.yelp.android.util.l;
import com.yelp.android.util.x;
import java.util.List;

public class BusinessPhotoUploadJob
  extends YelpJob
{
  private final String mBusinessId;
  private final String mCaption;
  private final String mImageFilePath;
  private final List<ShareRequest.ShareType> mShareTypes;
  
  private BusinessPhotoUploadJob(String paramString1, String paramString2, String paramString3, List<ShareRequest.ShareType> paramList)
  {
    super(new h(1).a().b().a("BusinessPhotoUploadJob"));
    mBusinessId = paramString1;
    mCaption = paramString2;
    mImageFilePath = paramString3;
    mShareTypes = paramList;
  }
  
  public static void launchJob(String paramString1, String paramString2, String paramString3, List<ShareRequest.ShareType> paramList)
  {
    AppData.r().a(new BusinessPhotoUploadJob(paramString1, paramString2, paramString3, paramList));
  }
  
  public void onCancel()
  {
    x.a(mImageFilePath, mBusinessId, getCreationTimeMillis());
    l.c(mImageFilePath);
  }
  
  public void onRun()
  {
    Photo localPhoto = (Photo)new aa(mBusinessId, mCaption, mImageFilePath).executeSynchronously();
    x.a(mImageFilePath, mBusinessId, localPhoto.getId(), getCreationTimeMillis());
    x.a(mImageFilePath, mBusinessId, localPhoto.getId());
    x.a(mShareTypes, localPhoto.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.BusinessPhotoUploadJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */