package com.yelp.android.ui.activities.messaging;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.EditText;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.cc.c;
import com.yelp.android.cc.k;
import com.yelp.android.database.g;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.StringUtils;

public class ActivityMessageTheBusinessEdit
  extends YelpActivity
{
  private c a;
  private YelpBusiness b;
  private ActivityMessageTheBusiness.a c = new ActivityMessageTheBusiness.a()
  {
    public void a(Object paramAnonymousObject)
    {
      paramAnonymousObject = (k)paramAnonymousObject;
      ((EditText)findViewById(2131690366)).setText(((k)paramAnonymousObject).b());
    }
  };
  private ActivityMessageTheBusiness.a d = new ActivityMessageTheBusiness.a()
  {
    public void a(Object paramAnonymousObject)
    {
      as.a(2131166877, 0);
      finish();
    }
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityMessageTheBusinessEdit.class);
    paramContext.putExtra("business", paramYelpBusiness);
    return paramContext;
  }
  
  private boolean a()
  {
    String str = ((EditText)findViewById(2131690366)).getText().toString();
    if (StringUtils.d(str))
    {
      AlertDialogFragment.a(null, getString(2131165982)).show(getSupportFragmentManager(), null);
      return false;
    }
    a.a(new k(b.aD(), str), d);
    return true;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((YelpBusiness)getIntent().getParcelableExtra("business"));
    a = AppData.b().i().h();
    setContentView(2130903285);
    setTitle(2131165820);
    if (paramBundle == null) {
      a.a(b, c);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755042, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131691015: 
      a();
      return true;
    }
    finish();
    AppData.a(EventIri.BusinessMessageTheBusinessLeave);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusinessEdit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */