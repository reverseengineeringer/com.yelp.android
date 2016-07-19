package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityCheckIn
  extends YelpActivity
{
  private CheckInDialog a;
  private YelpCheckIn b;
  private YelpBusiness c;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityCheckIn.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString)
  {
    return a(paramContext, paramYelpBusiness).putExtra("extra.comment_text", paramString);
  }
  
  public static String a(Intent paramIntent)
  {
    return paramIntent.getStringExtra("extra.comment_text");
  }
  
  public static Intent b(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = a(paramContext, paramYelpBusiness);
    paramContext.putExtra("extra.should_forward_to_business", true);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = ((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
    a = ((CheckInDialog)getSupportFragmentManager().a("check_in_dialog"));
    if (a == null)
    {
      a = CheckInDialog.a(c, getIntent().getStringExtra("extra.comment_text"));
      a.show(getSupportFragmentManager(), "check_in_dialog");
    }
    a.a(new CheckInDialog.a()
    {
      public void a(YelpCheckIn paramAnonymousYelpCheckIn)
      {
        ActivityCheckIn.a(ActivityCheckIn.this, paramAnonymousYelpCheckIn);
      }
    });
    a.a(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        paramAnonymousDialogInterface = ActivityCheckIn.a(ActivityCheckIn.this).b();
        Intent localIntent = new Intent();
        localIntent.putExtra("extra.comment_text", paramAnonymousDialogInterface);
        if (ActivityCheckIn.b(ActivityCheckIn.this) == null) {
          setResult(0, localIntent);
        }
        for (;;)
        {
          finish();
          return;
          paramAnonymousDialogInterface = new Intent();
          BusinessContributionType.CHECK_IN.writeToIntent(paramAnonymousDialogInterface, ActivityCheckIn.b(ActivityCheckIn.this));
          setResult(-1, paramAnonymousDialogInterface);
          if (getIntent().getBooleanExtra("extra.should_forward_to_business", false))
          {
            paramAnonymousDialogInterface = ActivityBusinessPage.b(ActivityCheckIn.this, ActivityCheckIn.c(ActivityCheckIn.this));
            BusinessContributionType.CHECK_IN.writeToIntent(paramAnonymousDialogInterface, ActivityCheckIn.b(ActivityCheckIn.this));
            startActivity(paramAnonymousDialogInterface);
          }
        }
      }
    });
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    a.a(null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */