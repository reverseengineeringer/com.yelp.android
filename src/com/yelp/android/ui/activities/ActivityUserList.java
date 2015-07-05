package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.cj;
import java.util.ArrayList;

public class ActivityUserList
  extends YelpListActivity
{
  private String a;
  private cj b;
  
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
    b = new cj();
    b.a(getIntent().getParcelableArrayListExtra("users list"), true);
    q().setOnItemClickListener(new eh(this));
    q().setAdapter(b);
    q().f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityUserList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */