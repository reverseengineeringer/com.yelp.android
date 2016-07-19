package com.yelp.android.services.job;

import android.text.TextUtils;
import com.path.android.jobqueue.b;
import com.path.android.jobqueue.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ce;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
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
  
  private HoursPhotoUploadJob(ce paramce)
  {
    super(new d(1).a().b().a("HoursPhotoUploadJob"));
    mPostParams = new HashMap(paramce.d());
    mChangedParams = paramce.b();
  }
  
  public static void launchJob(ce paramce)
  {
    AppData.w().a(new HoursPhotoUploadJob(paramce));
  }
  
  public void onCancel() {}
  
  public void onRun()
    throws Throwable
  {
    super.onRun();
    Object localObject1 = new ce((String)mPostParams.get("image_path"));
    Object localObject2 = mPostParams.entrySet().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
      if (!((String)localEntry.getKey()).equalsIgnoreCase("image_path")) {
        ((ce)localObject1).b((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    ((ce)localObject1).i();
    localObject1 = new TreeMap();
    ((Map)localObject1).put("changed", TextUtils.join(",", mChangedParams));
    localObject2 = EventIri.BusinessUpdateSuccess;
    AppData.b().k().a((a)localObject2, (Map)localObject1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.HoursPhotoUploadJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */