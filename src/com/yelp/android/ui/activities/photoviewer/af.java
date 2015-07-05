package com.yelp.android.ui.activities.photoviewer;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.addphoto.PhotoTeaser;
import java.util.HashMap;
import java.util.Map;

class af
  implements View.OnClickListener
{
  af(PhotoPageAddMediaFragment paramPhotoPageAddMediaFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = new HashMap();
    paramView.put("business_id", ((YelpBusiness)a.getArguments().getParcelable("extra.business")).getId());
    paramView.put("source", "image_viewer_page");
    AppData.a(EventIri.BusinessAddPhoto, paramView);
    paramView = PhotoTeaser.a(a.getActivity(), (YelpBusiness)a.getArguments().getParcelable("extra.business"));
    a.startActivityForResult(ActivityLogin.a(a.getActivity(), 300, 2131166034, paramView), 1037);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */