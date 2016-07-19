package com.yelp.android.ui.activities.bugreport;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
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
    if ((ReportABugFragment)getSupportFragmentManager().a(2131689997) == null)
    {
      paramBundle = ReportABugFragment.a();
      getSupportFragmentManager().a().b(2131689997, paramBundle).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bugreport.ActivityReportABug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */