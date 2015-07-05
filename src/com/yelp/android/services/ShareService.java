package com.yelp.android.services;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.al;
import com.yelp.android.appdata.webrequests.fe;
import com.yelp.android.appdata.webrequests.ga;
import com.yelp.android.appdata.webrequests.z;
import com.yelp.android.ui.activities.ActivityRetryBusinessPhotoShare;
import com.yelp.android.ui.activities.ActivityRetryCheckInShare;
import com.yelp.android.ui.activities.ActivityRetryReviewShare;
import com.yelp.android.ui.activities.ActivityRetryShare;
import com.yelp.android.ui.activities.ActivityRetryTipShare;
import com.yelp.android.ui.activities.dw;
import com.yelp.android.util.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class ShareService
  extends IntentService
{
  public ShareService()
  {
    super("ShareService");
  }
  
  public static Intent a(Context paramContext, ShareService.ShareObjectType paramShareObjectType, String paramString, Collection<ShareRequest.ShareType> paramCollection, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ShareService.class);
    paramContext.putExtra("pending_shares", f.a(paramCollection));
    paramContext.putExtra("yelp:object_id", paramString);
    paramContext.putExtra("yelp:from_notification", paramBoolean);
    f.a(paramContext, "yelp:object_type", paramShareObjectType);
    return paramContext;
  }
  
  public static dw a(Intent paramIntent)
  {
    paramIntent = (ShareService.ShareObjectType)f.a(paramIntent, "yelp:object_type", ShareService.ShareObjectType.class);
    switch (k.a[paramIntent.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return ActivityRetryShare.g;
    case 2: 
      return ActivityRetryShare.h;
    case 3: 
      return ActivityRetryShare.i;
    }
    return ActivityRetryShare.j;
  }
  
  public static boolean a(YelpException paramYelpException)
  {
    if (!(paramYelpException instanceof ApiException)) {}
    int i;
    do
    {
      return false;
      i = ((ApiException)paramYelpException).getResultCode();
    } while ((i != 1012) && (i != 1013));
    return true;
  }
  
  public ApiRequest<?, ?, ?> a(Intent paramIntent, ShareService.ShareObjectType paramShareObjectType, ShareRequest.ShareType paramShareType)
  {
    paramIntent = paramIntent.getStringExtra("yelp:object_id");
    switch (k.a[paramShareObjectType.ordinal()])
    {
    default: 
      AppData.a("ShareService", "Share service started with unknown share object type", new Object[0]);
      return null;
    case 1: 
      return new al(paramIntent, paramShareType, null);
    case 2: 
      return new z(paramIntent, paramShareType, null);
    case 3: 
      return new ga(paramIntent, paramShareType, null);
    }
    return new fe(paramIntent, paramShareType, null);
  }
  
  void a(Intent paramIntent, List<Pair<ShareRequest.ShareType, ? extends YelpException>> paramList)
  {
    boolean bool = paramIntent.getBooleanExtra("yelp:from_notification", false);
    Object localObject1;
    if (paramList.size() > 1)
    {
      localObject1 = paramList.iterator();
      do
      {
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
      } while (a((YelpException)nextsecond));
    }
    for (int i = 0;; i = 1)
    {
      if (i != 0) {}
      for (i = aa;; i = ab)
      {
        localObject1 = getString(i, new Object[] { getString(2131166854, new Object[] { getText(2131165802), getText(2131166753) }) });
        localObject2 = b(paramIntent, paramList);
        if (!bool) {
          break;
        }
        ((Intent)localObject2).addFlags(268435456);
        startActivity((Intent)localObject2);
        return;
      }
      if (a((YelpException)get0second)) {}
      for (i = aa;; i = ab)
      {
        localObject1 = getString(i, new Object[] { getText(((ShareRequest.ShareType)get0first).getNameStringResource()) });
        break;
      }
      paramList = new Notification(2130838222, (CharSequence)localObject1, System.currentTimeMillis());
      flags |= 0x14;
      Object localObject2 = PendingIntent.getActivity(this, 0, (Intent)localObject2, 1073741824);
      paramList.setLatestEventInfo(this, getString(ac), (CharSequence)localObject1, (PendingIntent)localObject2);
      ((NotificationManager)getSystemService("notification")).notify("ShareService.notification_tag", 0, paramList);
      return;
    }
  }
  
  public Intent b(Intent paramIntent, List<Pair<ShareRequest.ShareType, ? extends YelpException>> paramList)
  {
    ShareService.ShareObjectType localShareObjectType = (ShareService.ShareObjectType)f.a(paramIntent, "yelp:object_type", ShareService.ShareObjectType.class);
    paramIntent = paramIntent.getStringExtra("yelp:object_id");
    switch (k.a[localShareObjectType.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return ActivityRetryCheckInShare.a(this, paramIntent, paramList);
    case 2: 
      return ActivityRetryBusinessPhotoShare.a(this, paramIntent, paramList);
    case 3: 
      return ActivityRetryTipShare.a(this, paramIntent, paramList);
    }
    return ActivityRetryReviewShare.a(this, paramIntent, paramList);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    ArrayList localArrayList1 = f.a(paramIntent.getIntArrayExtra("pending_shares"), ShareRequest.ShareType.values());
    ShareService.ShareObjectType localShareObjectType = (ShareService.ShareObjectType)f.a(paramIntent, "yelp:object_type", ShareService.ShareObjectType.class);
    AppData localAppData = (AppData)getApplication();
    ArrayList localArrayList2 = new ArrayList();
    int i = 0;
    for (;;)
    {
      ShareRequest.ShareType localShareType;
      if (!localArrayList1.isEmpty())
      {
        localShareType = (ShareRequest.ShareType)localArrayList1.get(0);
        AppData.a("ShareService", "Sharing %s to: %s", new Object[] { localShareObjectType.name(), localShareType.name() });
        ApiRequest localApiRequest = a(paramIntent, localShareObjectType, localShareType);
        Object localObject = null;
        try
        {
          localApiRequest.executeSynchronously(localAppData.m(), localAppData.o(), false);
          if ((localObject == null) || (((localObject instanceof ApiException)) && (((ApiException)localObject).getResultCode() == 1015))) {
            localArrayList1.remove(localShareType);
          }
        }
        catch (YelpException localYelpException)
        {
          for (;;) {}
          if (localYelpException.getMessageResource() == YelpException.YPErrorUnknown) {}
        }
        if ((localYelpException.getMessageResource() == YelpException.YPErrorServerResponse) && (i < 2)) {
          i += 1;
        }
      }
      try
      {
        Thread.sleep(5000L);
        for (;;)
        {
          break;
          localArrayList1.remove(localShareType);
          localArrayList2.add(Pair.create(localShareType, localYelpException));
        }
        if (!localArrayList2.isEmpty()) {
          a(paramIntent, localArrayList2);
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.ShareService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */