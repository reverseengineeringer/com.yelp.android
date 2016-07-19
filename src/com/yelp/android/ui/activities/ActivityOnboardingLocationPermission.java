package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.d;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.n;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.av;
import java.util.Map;

public class ActivityOnboardingLocationPermission
  extends YelpActivity
{
  private View.OnClickListener a = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      if (k.a(ActivityOnboardingLocationPermission.this, PermissionGroup.LOCATION))
      {
        setResult(-1);
        finish();
        return;
      }
      k.a(ActivityOnboardingLocationPermission.this, 250, new PermissionGroup[] { PermissionGroup.LOCATION });
    }
  };
  
  public static Intent a(Context paramContext)
  {
    paramContext = new Intent(paramContext, ActivityOnboardingLocationPermission.class);
    paramContext.addFlags(536870912);
    paramContext.addFlags(67108864);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.OnboardingLocationPermission;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903490);
    findViewById(2131689677).startAnimation(av.a(20000L));
    ((TextView)findViewById(2131689792)).setText(2131166852);
    findViewById(2131690822).setOnClickListener(a);
    paramBundle = (ImageView)findViewById(2131690823);
    Object localObject = (ViewGroup.MarginLayoutParams)paramBundle.getLayoutParams();
    leftMargin = n.a(17);
    paramBundle.setLayoutParams((ViewGroup.LayoutParams)localObject);
    localObject = new AnimationDrawable();
    int i = 0;
    while (i < 2)
    {
      ((AnimationDrawable)localObject).addFrame(d.a(this, 2130838047), 200);
      ((AnimationDrawable)localObject).addFrame(d.a(this, 2130838045), 50);
      ((AnimationDrawable)localObject).addFrame(d.a(this, 2130838046), 500);
      ((AnimationDrawable)localObject).addFrame(d.a(this, 2130838045), 50);
      i += 1;
    }
    ((AnimationDrawable)localObject).addFrame(d.a(this, 2130838047), 5000);
    ((AnimationDrawable)localObject).setOneShot(false);
    paramBundle.setImageDrawable((Drawable)localObject);
    ((AnimationDrawable)localObject).start();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if (paramArrayOfString.containsKey(PermissionGroup.LOCATION))
      {
        if (!((Boolean)paramArrayOfString.get(PermissionGroup.LOCATION)).booleanValue()) {
          break label65;
        }
        AppData.b().F();
        AppData.a(EventIri.PermissionLocationAllowed);
      }
      for (;;)
      {
        setResult(-1);
        finish();
        return;
        label65:
        AppData.a(EventIri.PermissionLocationDenied);
      }
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityOnboardingLocationPermission
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */