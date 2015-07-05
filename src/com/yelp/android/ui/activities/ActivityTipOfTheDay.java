package com.yelp.android.ui.activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cu;
import com.yelp.android.appdata.webrequests.cv;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Tip;
import com.yelp.android.webimageview.WebImageView;

public class ActivityTipOfTheDay
  extends NotificationActivity
  implements m<cv>
{
  private Tip f;
  
  private void a(Tip paramTip)
  {
    f = paramTip;
    TextView localTextView1 = (TextView)findViewById(2131493962);
    WebImageView localWebImageView = (WebImageView)findViewById(2131493963);
    TextView localTextView2 = (TextView)findViewById(2131493964);
    localTextView1.setText(paramTip.getTipOfTheDayDateFormat(this, true));
    localWebImageView.setImageUrl(paramTip.getUserPhotoUrl());
    localTextView2.setText(paramTip.getText());
    d.setText(getString(2131165642, new Object[] { paramTip.getBusinessName() }));
    a.setOnClickListener(new ed(this, paramTip));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cv paramcv)
  {
    e.setVisibility(8);
    a(c);
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      f = ((Tip)paramBundle.getParcelable("key.tip"));
    }
    if (f != null)
    {
      a(f);
      return;
    }
    paramBundle = new cu(this, getIntent().getStringExtra("key.tip_id"));
    e.setVisibility(0);
    e.bringToFront();
    paramBundle.execute(new Void[0]);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    finish();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("key.tip", f);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityTipOfTheDay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */