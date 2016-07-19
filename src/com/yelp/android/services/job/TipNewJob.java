package com.yelp.android.services.job;

import android.content.Context;
import com.path.android.jobqueue.b;
import com.path.android.jobqueue.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.SaveTipRequest;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.Tip.TempTip;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.ui.activities.ActivityFullScreenAward;
import com.yelp.android.ui.activities.ActivityFullScreenAward.AwardType;
import com.yelp.android.util.ObjectDirtyEvent;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class TipNewJob
  extends YelpJob
{
  private final String mBusinessId;
  private final File mImage;
  private final boolean mRemovePhotoWhenComplete;
  private final boolean mShareFacebook;
  private final boolean mShareTwitter;
  private final String mTempTipId;
  private final String mText;
  
  private TipNewJob(String paramString1, String paramString2, String paramString3, File paramFile, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(new d(1).b().a().a("TipNewJob"));
    mBusinessId = paramString1;
    mTempTipId = paramString2;
    mText = paramString3;
    mImage = paramFile;
    mShareFacebook = paramBoolean1;
    mShareTwitter = paramBoolean2;
    mRemovePhotoWhenComplete = paramBoolean3;
  }
  
  public static void launchJob(String paramString1, String paramString2, String paramString3, File paramFile, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    AppData.w().a(new TipNewJob(paramString1, paramString2, paramString3, paramFile, paramBoolean1, paramBoolean2, paramBoolean3));
  }
  
  public void onCancel()
  {
    super.onCancel();
    AppData.a(EventIri.TipSaveFailure, "quicktip_state", "new");
    Tip.TempTip localTempTip = new Tip.TempTip();
    localTempTip.c(mTempTipId);
    new ObjectDirtyEvent(localTempTip, "com.yelp.android.tips.delete").a(getContext());
  }
  
  public void onRun()
    throws Throwable
  {
    super.onRun();
    Tip localTip = (Tip)new SaveTipRequest(mBusinessId, mText, mImage).i();
    localTip.c(mTempTipId);
    new ObjectDirtyEvent(localTip, "com.yelp.android.tips.update").a(getContext());
    ArrayList localArrayList = new ArrayList();
    if (mShareFacebook) {
      localArrayList.add(ShareRequest.ShareType.FACEBOOK);
    }
    if (mShareTwitter) {
      localArrayList.add(ShareRequest.ShareType.TWITTER);
    }
    if (localTip.m()) {
      getContext().startActivity(ActivityFullScreenAward.a(getContext(), ActivityFullScreenAward.AwardType.FirstToTip, localTip.o(), localTip.a(), ShareService.ShareObjectType.TIP, localArrayList));
    }
    for (;;)
    {
      if ((mImage != null) && (mRemovePhotoWhenComplete)) {
        mImage.delete();
      }
      AppData.a(EventIri.TipSaveSuccess, "quicktip_state", "new");
      return;
      if (!localArrayList.isEmpty()) {
        getContext().startService(ShareService.a(getContext(), ShareService.ShareObjectType.TIP, localTip.a(), localArrayList, false));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.TipNewJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */