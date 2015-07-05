package com.yelp.android.services.push;

import android.content.Context;
import android.net.Uri;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.serializable.Video;
import com.yelp.android.ui.activities.ActivityVideoUrlCatcher;
import java.util.ArrayList;

public class v
  extends r
{
  public v(Context paramContext, Uri paramUri)
  {
    super(paramContext, Notifier.NotificationType.VideoLikes, paramContext.getString(2131166887), paramUri);
  }
  
  private String e()
  {
    return ActivityVideoUrlCatcher.b(b);
  }
  
  protected int a()
  {
    return a(e());
  }
  
  protected String b()
  {
    return ActivityVideoUrlCatcher.a(b);
  }
  
  protected String d()
  {
    try
    {
      String str = ((Video)((dm)BusinessMediaRequest.singleVideo(b(), e()).executeSynchronously()).b().get(0)).getThumbnailUrl();
      return str;
    }
    catch (YelpException localYelpException)
    {
      return null;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      for (;;) {}
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */