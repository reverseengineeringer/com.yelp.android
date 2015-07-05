package com.yelp.android.services;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.PhotoUploadRequestBase;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.Tip.TempTip;
import com.yelp.android.ui.activities.ActivityFullScreenAward;
import com.yelp.android.ui.activities.ActivityFullScreenAward.AwardType;
import com.yelp.android.ui.activities.ActivityRetryShare;
import com.yelp.android.ui.activities.dw;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.Collection;
import java.util.HashSet;

public class TipUploadService
  extends IntentService
{
  public TipUploadService()
  {
    super("TipUploadService");
  }
  
  private Notification a(Intent paramIntent)
  {
    paramIntent = PendingIntent.getService(this, 0, paramIntent, paramIntent.getFlags());
    Notification localNotification = new Notification(2130838222, getString(2131166722), System.currentTimeMillis());
    flags |= 0x14;
    localNotification.setLatestEventInfo(this, getString(ic), getString(2131166723), paramIntent);
    return localNotification;
  }
  
  public static Intent a(Context paramContext, PhotoUploadRequestBase<?> paramPhotoUploadRequestBase, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString1, String paramString2, Photo paramPhoto)
  {
    paramContext = new Intent(paramContext, TipUploadService.class);
    paramContext.putExtra("request", paramPhotoUploadRequestBase);
    paramContext.putExtra("cleanup_when_complete", paramBoolean1);
    paramContext.putExtra("share_fb", paramBoolean2);
    paramContext.putExtra("share_twitter", paramBoolean3);
    paramContext.putExtra("is_edit", paramBoolean4);
    paramContext.putExtra("tip_id", paramString1);
    paramContext.putExtra("original_text", paramString2);
    paramContext.putExtra("original_photo", paramPhoto);
    return paramContext;
  }
  
  private Notification b(Intent paramIntent)
  {
    paramIntent = PendingIntent.getActivity(this, 0, new Intent(), 268435456);
    Notification localNotification = new Notification(17301640, "", System.currentTimeMillis());
    flags |= 0x2;
    localNotification.setLatestEventInfo(this, getString(2131166724), "", paramIntent);
    tickerText = getString(2131166724);
    return localNotification;
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    startForeground((int)(System.currentTimeMillis() * 1000L), b(paramIntent));
    Object localObject1 = (PhotoUploadRequestBase)paramIntent.getParcelableExtra("request");
    Object localObject2 = (AppData)getApplication();
    ((PhotoUploadRequestBase)localObject1).setHttpClient(((AppData)localObject2).p());
    String str1 = paramIntent.getStringExtra("tip_id");
    String str2 = paramIntent.getStringExtra("original_text");
    Photo localPhoto = (Photo)paramIntent.getParcelableExtra("original_photo");
    boolean bool = paramIntent.getBooleanExtra("is_edit", false);
    try
    {
      ((PhotoUploadRequestBase)localObject1).setupEntity();
      localObject1 = (Tip)((PhotoUploadRequestBase)localObject1).executeSynchronously(((AppData)localObject2).m(), ((AppData)localObject2).o(), false);
      if (!bool) {
        ((Tip)localObject1).setTempId(str1);
      }
      new ObjectDirtyEvent((Parcelable)localObject1, "com.yelp.android.tips.update").a(this);
      if ((((Tip)localObject1).isFirstTip()) && (!bool)) {
        startActivity(ActivityFullScreenAward.a(this, ActivityFullScreenAward.AwardType.FirstToTip, ((Tip)localObject1).getBusinessName()));
      }
      localObject2 = new HashSet();
      if (paramIntent.getBooleanExtra("share_fb", false)) {
        ((HashSet)localObject2).add(ShareRequest.ShareType.FACEBOOK);
      }
      if (paramIntent.getBooleanExtra("share_twitter", false)) {
        ((HashSet)localObject2).add(ShareRequest.ShareType.TWITTER);
      }
      startService(ShareService.a(this, ShareService.ShareObjectType.TIP, ((Tip)localObject1).getId(), (Collection)localObject2, false));
      return;
    }
    catch (YelpException localYelpException)
    {
      ((NotificationManager)getSystemService("notification")).notify("TipUploadService", 0, a(paramIntent));
      paramIntent = new Tip.TempTip();
      if (bool)
      {
        paramIntent.setId(str1);
        paramIntent.setText(str2);
        paramIntent.setPhoto(localPhoto);
        new ObjectDirtyEvent(paramIntent, "com.yelp.android.tips.update").a(this);
        return;
      }
      paramIntent.setTempId(str1);
      new ObjectDirtyEvent(paramIntent, "com.yelp.android.tips.delete").a(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.TipUploadService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */