package com.yelp.android.services.job;

import com.path.android.jobqueue.b;
import com.path.android.jobqueue.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.EditTipRequest;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.Tip.TempTip;
import com.yelp.android.util.ObjectDirtyEvent;
import java.io.File;

public class TipEditJob
  extends YelpJob
{
  private final File mImage;
  private final Photo mOriginalPhoto;
  private final String mOriginalText;
  private final boolean mRemovePhotoWhenComplete;
  private final String mText;
  private final String mTipId;
  
  private TipEditJob(String paramString1, String paramString2, File paramFile, boolean paramBoolean, String paramString3, Photo paramPhoto)
  {
    super(new d(1).b().a().a("TipEditJob"));
    mTipId = paramString1;
    mText = paramString2;
    mImage = paramFile;
    mRemovePhotoWhenComplete = paramBoolean;
    mOriginalText = paramString3;
    mOriginalPhoto = paramPhoto;
  }
  
  public static void launchJob(String paramString1, String paramString2, File paramFile, boolean paramBoolean, String paramString3, Photo paramPhoto)
  {
    AppData.w().a(new TipEditJob(paramString1, paramString2, paramFile, paramBoolean, paramString3, paramPhoto));
  }
  
  public void onCancel()
  {
    super.onCancel();
    AppData.a(EventIri.TipSaveFailure, "quicktip_state", "edited");
    Tip.TempTip localTempTip = new Tip.TempTip();
    localTempTip.d(mTipId);
    localTempTip.a(mOriginalText);
    localTempTip.a(mOriginalPhoto);
    new ObjectDirtyEvent(localTempTip, "com.yelp.android.tips.update").a(getContext());
  }
  
  public void onRun()
    throws Throwable
  {
    super.onRun();
    new ObjectDirtyEvent((Tip)new EditTipRequest(mTipId, mText, mImage).i(), "com.yelp.android.tips.update").a(getContext());
    if ((mImage != null) && (mRemovePhotoWhenComplete)) {
      mImage.delete();
    }
    AppData.a(EventIri.TipSaveSuccess, "quicktip_state", "edited");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.TipEditJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */