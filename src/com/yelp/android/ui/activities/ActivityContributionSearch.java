package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;

public class ActivityContributionSearch
  extends ActivitySingleSearchBar<ContributionSearchFragment>
{
  private String a = "";
  private String b = "";
  private EditText c;
  
  public static Intent a(Context paramContext, BusinessContributionType paramBusinessContributionType)
  {
    paramContext = new Intent(paramContext, ActivityContributionSearch.class);
    paramContext.putExtra("extra.contribution_type", paramBusinessContributionType);
    return paramContext;
  }
  
  private void a(String paramString)
  {
    ((ContributionSearchFragment)e()).a(a, b, paramString);
  }
  
  private void d()
  {
    BusinessContributionType localBusinessContributionType = b();
    c = ((EditText)findViewById(2131493226));
    c.setOnClickListener(new bd(this, localBusinessContributionType));
    c.setHint(2131165654);
    c.setText(a);
  }
  
  protected ContributionSearchFragment a()
  {
    return ContributionSearchFragment.a(b());
  }
  
  public BusinessContributionType b()
  {
    return (BusinessContributionType)getIntent().getSerializableExtra("extra.contribution_type");
  }
  
  public void enableLoading(ApiRequest<?, ?, ?> paramApiRequest)
  {
    enableLoading(paramApiRequest, 0);
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      do
      {
        return;
      } while (paramInt2 == -1);
      finish();
      return;
      if (paramIntent != null)
      {
        a = paramIntent.getStringExtra("extra.search_text");
        b = paramIntent.getStringExtra("extra.location");
        c.setText(a);
        if (paramInt2 == -1) {
          a(paramIntent.getStringExtra("extra.search.launch_method"));
        }
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    BusinessContributionType localBusinessContributionType = (BusinessContributionType)getIntent().getSerializableExtra("extra.contribution_type");
    if (localBusinessContributionType == BusinessContributionType.BUSINESS_PHOTO) {
      if (Features.video_capture.isEnabled()) {
        setTitle(2131165334);
      }
    }
    for (;;)
    {
      d();
      if (paramBundle != null)
      {
        a = paramBundle.getString("previous_search", "");
        b = paramBundle.getString("previous_location", "");
      }
      if (!AppData.b().m().e()) {
        startActivityForResult(ActivityLogin.a(this, 2131166037), 1043);
      }
      return;
      setTitle(2131165338);
      continue;
      setTitle(titleRes);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("previous_search", a);
    paramBundle.putString("previous_location", b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityContributionSearch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */