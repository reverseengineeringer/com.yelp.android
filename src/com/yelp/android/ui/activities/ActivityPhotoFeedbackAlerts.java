package com.yelp.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.gk;
import com.yelp.android.serializable.PhotoFeedback;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import java.util.ArrayList;
import java.util.Iterator;

public class ActivityPhotoFeedbackAlerts
  extends YelpListActivity
{
  ArrayList<PhotoFeedback> a;
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    startActivity(ActivityUserProfile.a(this, ((PhotoFeedback)a.get(paramInt)).getUserId()));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.PhotoFeedbackAlerts;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131166221);
    Object localObject = new de(this, null);
    a = getIntent().getParcelableArrayListExtra("feedbacks");
    ((de)localObject).a(a);
    q().setAdapter((ListAdapter)localObject);
    q().f();
    localObject = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((ArrayList)localObject).add(((PhotoFeedback)localIterator.next()).getId());
    }
    if (paramBundle == null) {
      new gk(null, "photo_feedback", (ArrayList)localObject).execute(new Void[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityPhotoFeedbackAlerts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */