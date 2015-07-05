package com.yelp.android.ui.util;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.os.Parcelable;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.dialogs.as;
import com.yelp.android.util.YelpLog;
import java.lang.ref.WeakReference;

public class an
  implements as
{
  WeakReference<Activity> a;
  
  public an(ImageInputHelper paramImageInputHelper, Activity paramActivity)
  {
    a = new WeakReference(paramActivity);
  }
  
  public void a(String paramString, Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof PendingIntent)) {}
    do
    {
      try
      {
        ((PendingIntent)paramParcelable).send(-1);
        return;
      }
      catch (PendingIntent.CanceledException paramString)
      {
        YelpLog.w("ImageInputHelper", "Couldn't send PendingIntent in ImageInputHelper because " + paramString.getMessage());
        return;
      }
      paramString = (ImageInputHelper.SourceIriPair)paramParcelable;
    } while (a.get() == null);
    if (ImageInputHelper.SourceIriPair.access$200(paramString) != null) {
      AppData.a(ImageInputHelper.SourceIriPair.access$200(paramString));
    }
    b.a((Activity)a.get(), ImageInputHelper.SourceIriPair.access$300(paramString));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */