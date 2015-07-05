package com.yelp.android.ui.activities.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityMessageTheBusiness
  extends YelpActivity
{
  private MessageTheBusinessFragment a;
  private YelpBusiness b;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityMessageTheBusiness.class);
    paramContext.putExtra("business", paramYelpBusiness);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessNewMessage;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((YelpBusiness)getIntent().getParcelableExtra("business"));
    a = ((MessageTheBusinessFragment)getSupportFragmentManager().findFragmentById(2131493332));
    if (a == null)
    {
      a = MessageTheBusinessFragment.a(b);
      getSupportFragmentManager().beginTransaction().replace(2131493332, a).commit();
    }
    setTitle(b.getName());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */