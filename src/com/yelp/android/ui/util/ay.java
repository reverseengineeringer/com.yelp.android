package com.yelp.android.ui.util;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import java.util.Map;

class ay
  implements View.OnClickListener
{
  ay(ax paramax) {}
  
  public void onClick(View paramView)
  {
    Object localObject = IriSource.Carousel.getMapWithParameter();
    ((Map)localObject).put("business_id", ax.a(a).getId());
    AppData.a(EventIri.BusinessAddPhoto, (Map)localObject);
    localObject = PhotoTeaser.a(paramView.getContext(), ax.a(a));
    ((Activity)paramView.getContext()).startActivityForResult(ActivityLogin.a(paramView.getContext(), 300, 2131166034, (Intent)localObject), 1037);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */