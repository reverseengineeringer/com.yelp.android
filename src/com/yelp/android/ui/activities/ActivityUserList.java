package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ap;
import java.util.ArrayList;

public class ActivityUserList
  extends YelpListActivity
{
  private String a;
  private ap b;
  
  public static Intent a(Context paramContext, ArrayList<User> paramArrayList, String paramString, ViewIri paramViewIri)
  {
    paramContext = new Intent(paramContext, ActivityUserList.class);
    paramContext.putParcelableArrayListExtra("users list", paramArrayList);
    paramContext.putExtra("title of the activity", paramString);
    paramContext.putExtra("iri string", paramViewIri.name());
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.valueOf(a);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(getIntent().getStringExtra("title of the activity"));
    a = getIntent().getStringExtra("iri string");
    b = new ap();
    b.a(getIntent().getParcelableArrayListExtra("users list"), true);
    r().setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (User)ActivityUserList.a(ActivityUserList.this).getItem(paramAnonymousInt);
        startActivity(ActivityUserProfile.a(ActivityUserList.this, paramAnonymousAdapterView.ae()));
      }
    });
    r().setAdapter(b);
    r().f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityUserList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */