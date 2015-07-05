package com.yelp.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import java.util.Map;

class cx
  implements View.OnClickListener
{
  cx(cv paramcv) {}
  
  public void onClick(View paramView)
  {
    Object localObject = IriSource.PhotoGridCell.getMapWithParameter();
    ((Map)localObject).put("business_id", ActivityMediaBrowser.g(a.a).getId());
    AppData.a(EventIri.BusinessAddPhoto, (Map)localObject);
    localObject = PhotoTeaser.a(paramView.getContext(), ActivityMediaBrowser.g(a.a));
    a.a.startActivity(ActivityLogin.a(paramView.getContext(), 300, 2131166034, (Intent)localObject));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */