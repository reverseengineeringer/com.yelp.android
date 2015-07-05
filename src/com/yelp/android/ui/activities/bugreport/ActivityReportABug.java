package com.yelp.android.ui.activities.bugreport;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityReportABug
  extends YelpActivity
{
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityReportABug.class);
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((ReportABugFragment)getSupportFragmentManager().findFragmentById(2131493332) == null)
    {
      paramBundle = ReportABugFragment.a();
      getSupportFragmentManager().beginTransaction().replace(2131493332, paramBundle).commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bugreport.ActivityReportABug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */