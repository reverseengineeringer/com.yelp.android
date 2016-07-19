package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.webrequests.UserPhotoRequest;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.mediagrid.ActivityUserMediaGrid;
import java.util.ArrayList;
import java.util.List;

class MoreAboutUser$2
  extends d
{
  MoreAboutUser$2(MoreAboutUser paramMoreAboutUser, EventIri paramEventIri)
  {
    super(paramEventIri);
  }
  
  public void a(View paramView)
  {
    paramView.getContext().startActivity(ActivityUserMediaGrid.a(paramView.getContext(), MoreAboutUser.a(a).ae(), new ArrayList(MoreAboutUser.a(a).ag()), new UserPhotoRequest(MoreAboutUser.a(a), MoreAboutUser.a(a).ag().size(), 20, null), 2131166349));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.MoreAboutUser.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */