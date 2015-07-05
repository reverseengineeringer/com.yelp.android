package com.yelp.android.services.push;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.activities.ActivityPhotoUrlCatcher;
import com.yelp.android.util.YelpLog;
import java.util.List;

public class o
  extends r
{
  public o(Context paramContext, Uri paramUri)
  {
    super(paramContext, Notifier.NotificationType.PhotoLikes, paramContext.getString(2131166885), paramUri);
  }
  
  protected int a()
  {
    String str2 = ActivityPhotoUrlCatcher.b(b);
    String str1 = str2;
    if (str2 == null) {
      str1 = a.name();
    }
    return a(str1);
  }
  
  protected String b()
  {
    return ActivityPhotoUrlCatcher.a(b);
  }
  
  protected String d()
  {
    try
    {
      Object localObject = ActivityPhotoUrlCatcher.b(b);
      localObject = (dm)BusinessMediaRequest.singlePhoto(b(), (String)localObject).executeSynchronously(AppData.b().m(), null, false);
      if (localObject != null)
      {
        localObject = ((dm)localObject).a();
        if ((localObject != null) && (!((List)localObject).isEmpty()))
        {
          localObject = ((Photo)((List)localObject).get(0)).getLargeUrl();
          return (String)localObject;
        }
      }
    }
    catch (YelpException localYelpException)
    {
      YelpLog.e(this, "PhotoLikePushNotificationHandler PhotoUrl error: " + localYelpException.toString(), localYelpException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */