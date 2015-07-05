package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.widget.Button;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.Collections;
import java.util.Map;

public class ActivitySignUpComplete
  extends YelpActivity
{
  public static Intent a(Context paramContext, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ActivitySignUpComplete.class);
    paramContext.putExtra("signup_from_review", paramBoolean);
    return paramContext;
  }
  
  private void a()
  {
    TextView localTextView1 = (TextView)findViewById(2131493295);
    TextView localTextView2 = (TextView)findViewById(2131493296);
    Button localButton = (Button)findViewById(2131493297);
    localButton.setOnClickListener(new dx(this));
    dc localdc = getAppData().m();
    String str = localdc.s().getNameWithoutPeriod();
    if (localdc.e())
    {
      if (localdc.n()) {}
      for (int i = 2131166838;; i = 2131166837)
      {
        localTextView1.setText(getString(i, new Object[] { str }));
        localTextView2.setText(2131166583);
        localButton.setText(2131165365);
        setTitle(2131165644);
        return;
      }
    }
    localTextView1.setText(getString(2131166585, new Object[] { str }));
    localTextView2.setText(2131166584);
    localButton.setText(2131166236);
    setTitle(2131166582);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.SignUpComplete;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    if (getIntent().getBooleanExtra("signup_from_review", false)) {
      return Collections.singletonMap("source", "write_review");
    }
    return super.getParametersForIri(paramb);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903114);
    getSupportActionBar().a(false);
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivitySignUpComplete
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */