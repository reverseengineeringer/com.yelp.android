package com.yelp.android.services.job;

import android.text.TextUtils;
import com.path.android.jobqueue.c;
import com.path.android.jobqueue.h;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.av.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class HoursPhotoUploadJob
  extends YelpJob
{
  private final Collection<String> mChangedParams;
  private final HashMap<String, String> mPostParams;
  
  private HoursPhotoUploadJob(co paramco)
  {
    super(new h(1).a().b().a("HoursPhotoUploadJob"));
    mPostParams = new HashMap(paramco.b());
    mChangedParams = paramco.a();
  }
  
  public static void launchJob(co paramco)
  {
    AppData.r().a(new HoursPhotoUploadJob(paramco));
  }
  
  public void onCancel() {}
  
  public void onRun()
  {
    Object localObject1 = new co((String)mPostParams.get("image_path"));
    Object localObject2 = mPostParams.entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      if (!((String)localEntry.getKey()).equalsIgnoreCase("image_path")) {
        ((co)localObject1).addPostParam((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    ((co)localObject1).executeSynchronously();
    localObject1 = new TreeMap();
    ((Map)localObject1).put("changed", TextUtils.join(",", mChangedParams));
    localObject2 = EventIri.BusinessUpdateSuccess;
    AppData.b().k().a((b)localObject2, (Map)localObject1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.HoursPhotoUploadJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */