package com.yelp.android.ui.activities.businesspage;

import android.app.Activity;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.webimageview.ImageLoader;
import java.util.List;

public class m
{
  public static void a(Activity paramActivity, YelpBusiness paramYelpBusiness)
  {
    String str = paramYelpBusiness.getPhotoUrl();
    List localList = paramYelpBusiness.getPhotos();
    if (localList.size() > 0) {
      str = ((Photo)localList.get(0)).getLargeSquareUrl();
    }
    paramActivity = new n(paramActivity, paramYelpBusiness);
    if ((str == null) && (localList.isEmpty()))
    {
      paramActivity.a(null);
      return;
    }
    ImageLoader.start(str, 800, 800, paramActivity, false, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */