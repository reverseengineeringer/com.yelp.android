package com.yelp.android.ui.activities;

import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
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
    setContentView(2130903103);
    setResult(-1, getIntent());
    paramBundle = (Button)findViewById(2131493037);
    paramBundle.setVisibility(0);
    paramBundle.setOnClickListener(new fk(this));
    paramBundle = getWindow().getAttributes();
    width = -1;
    getWindow().setAttributes(paramBundle);
    b = ((RelativeLayout)findViewById(2131493250));
    c = ((ImageView)findViewById(2131493249));
    if (c != null)
    {
      paramBundle = new AnimationSet(false);
      paramBundle.addAnimation(AnimationUtils.loadAnimation(this, 2130968601));
      paramBundle.addAnimation(AnimationUtils.loadAnimation(this, 2130968595));
      c.setAnimation(paramBundle);
    }
    d = ((TextView)findViewById(2131493248));
    e = findViewById(2131493251);
    paramBundle = (ViewStub)findViewById(2131493246);
    TypedValue localTypedValue = new TypedValue();
    getTheme().resolveAttribute(2130772102, localTypedValue, true);
    paramBundle.setLayoutResource(resourceId);
    paramBundle.inflate();
    a = findViewById(2131493247);
    paramBundle = new TypedValue();
    getTheme().resolveAttribute(2130772101, paramBundle, true);
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