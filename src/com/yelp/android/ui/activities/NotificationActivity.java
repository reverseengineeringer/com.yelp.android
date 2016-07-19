package com.yelp.android.ui.activities;

import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.view.Window;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.ui.activities.support.YelpActivity;

public abstract class NotificationActivity
  extends YelpActivity
{
  View a;
  RelativeLayout b;
  ImageView c;
  TextView d;
  View e;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903114);
    setResult(-1, getIntent());
    paramBundle = (Button)findViewById(2131689715);
    paramBundle.setVisibility(0);
    paramBundle.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        finish();
      }
    });
    paramBundle = getWindow().getAttributes();
    width = -1;
    getWindow().setAttributes(paramBundle);
    b = ((RelativeLayout)findViewById(2131689908));
    c = ((ImageView)findViewById(2131689907));
    if (c != null)
    {
      paramBundle = new AnimationSet(false);
      paramBundle.addAnimation(AnimationUtils.loadAnimation(this, 2130968607));
      paramBundle.addAnimation(AnimationUtils.loadAnimation(this, 2130968601));
      c.setAnimation(paramBundle);
    }
    d = ((TextView)findViewById(2131689906));
    e = findViewById(2131689909);
    paramBundle = (ViewStub)findViewById(2131689904);
    TypedValue localTypedValue = new TypedValue();
    getTheme().resolveAttribute(2130772156, localTypedValue, true);
    paramBundle.setLayoutResource(resourceId);
    paramBundle.inflate();
    a = findViewById(2131689905);
    paramBundle = new TypedValue();
    getTheme().resolveAttribute(2130772155, paramBundle, true);
    if (resourceId != 0) {
      setTitle(resourceId);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.NotificationActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */