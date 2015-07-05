package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;

public class EditOpenHoursDescription
  extends YelpActivity
{
  TextView a;
  
  public static final Intent a(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(paramContext, EditOpenHoursDescription.class);
    paramContext = paramString1;
    if (paramString1 == null) {
      paramContext = "";
    }
    localIntent.putExtra("DESCRIPTION", paramContext);
    localIntent.putExtra("LISTED_KEY", paramString2);
    return localIntent;
  }
  
  public static String a(Intent paramIntent)
  {
    return paramIntent.getStringExtra("DESCRIPTION");
  }
  
  void a()
  {
    a = ((TextView)findViewById(2131493145));
    a.setText(getIntent().getStringExtra("DESCRIPTION"));
  }
  
  void b()
  {
    CharSequence localCharSequence = getIntent().getCharSequenceExtra("LISTED_KEY");
    if (!TextUtils.isEmpty(localCharSequence))
    {
      ((TextView)findViewById(2131493169)).setText(2131166680);
      a.setHint(2131165738);
      findViewById(2131493178).setVisibility(0);
      ((TextView)findViewById(2131493179)).setText(localCharSequence);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessEditHoursDescription;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903086);
    a();
    b();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755019, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      paramMenuItem = new Intent(getIntent());
      paramMenuItem.putExtra("DESCRIPTION", String.valueOf(a.getText()));
      setResult(-1, paramMenuItem);
      finish();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditOpenHoursDescription
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */