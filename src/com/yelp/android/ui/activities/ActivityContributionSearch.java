package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.cf.a;
import com.yelp.android.ui.activities.search.SearchOverlay;
import com.yelp.android.ui.activities.search.SearchOverlay.SearchDisplayFeatures;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import java.util.Collections;
import java.util.EnumSet;

public class ActivityContributionSearch
  extends ActivitySingleSearchBar<ContributionSearchFragment>
{
  private String a = "";
  private String b = "";
  private EditText c;
  
  public static Intent a(Context paramContext, BusinessContributionType paramBusinessContributionType)
  {
    paramContext = new Intent(paramContext, ActivityContributionSearch.class);
    paramContext.setAction("android.intent.action.SEND");
    if (BusinessContributionType.BUSINESS_PHOTO == paramBusinessContributionType) {
      paramContext.setType("image/*");
    }
    for (;;)
    {
      paramContext.putExtra("extra.contribution_type", paramBusinessContributionType);
      return paramContext;
      if (BusinessContributionType.BUSINESS_VIDEO == paramBusinessContributionType) {
        paramContext.setType("video/*");
      }
    }
  }
  
  private void a(String paramString)
  {
    ((ContributionSearchFragment)e()).a(a, b, paramString);
  }
  
  private BusinessContributionType f()
  {
    if (("android.intent.action.SEND".equals(getIntent().getAction())) && (getIntent().getCategories() == null) && (getIntent().getType() != null))
    {
      if (getIntent().getType().matches("image/(.*)")) {
        return BusinessContributionType.BUSINESS_PHOTO;
      }
      if (getIntent().getType().matches("video/(.*)")) {
        return BusinessContributionType.BUSINESS_VIDEO;
      }
    }
    return null;
  }
  
  private void g()
  {
    final BusinessContributionType localBusinessContributionType = b();
    c = ((EditText)findViewById(2131690889));
    c.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (localBusinessContributionType == BusinessContributionType.CHECK_IN) {}
        for (paramAnonymousView = EnumSet.of(SearchOverlay.SearchDisplayFeatures.NAME);; paramAnonymousView = EnumSet.allOf(SearchOverlay.SearchDisplayFeatures.class))
        {
          paramAnonymousView = SearchOverlay.a(ActivityContributionSearch.this, Collections.singletonList(getResources().getString(2131165745)), ActivityContributionSearch.a(ActivityContributionSearch.this), ActivityContributionSearch.b(ActivityContributionSearch.this), false, localBusinessContributionType, SuggestionFilter.SuggestionType.CONTRIBUTION, paramAnonymousView);
          SearchOverlay.a(paramAnonymousView, c());
          startActivityForResult(paramAnonymousView, 1055);
          return;
        }
      }
    });
    c.setHint(2131165732);
    c.setText(a);
  }
  
  protected ContributionSearchFragment a()
  {
    return ContributionSearchFragment.a(b(), c());
  }
  
  public BusinessContributionType b()
  {
    BusinessContributionType localBusinessContributionType = f();
    if (localBusinessContributionType != null) {
      return localBusinessContributionType;
    }
    return (BusinessContributionType)getIntent().getSerializableExtra("extra.contribution_type");
  }
  
  public Uri c()
  {
    if (f() == null) {
      return null;
    }
    return a.a(getIntent(), this);
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
      } while (AppData.b().q().d());
      finish();
      return;
      if (paramInt2 == 2)
      {
        finish();
      }
      else if (paramIntent != null)
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
    if ((getIntent() != null) && (!"android.intent.action.SEND".equals(getIntent().getAction()))) {
      finish();
    }
    BusinessContributionType localBusinessContributionType1;
    do
    {
      return;
      BusinessContributionType localBusinessContributionType2 = (BusinessContributionType)getIntent().getSerializableExtra("extra.contribution_type");
      localBusinessContributionType1 = localBusinessContributionType2;
      if (localBusinessContributionType2 == null) {
        localBusinessContributionType1 = f();
      }
      if (localBusinessContributionType1 != BusinessContributionType.BUSINESS_PHOTO) {
        break label173;
      }
      if (!Features.video_capture.isEnabled()) {
        break;
      }
      setTitle(2131165459);
      g();
      if (paramBundle != null)
      {
        a = paramBundle.getString("previous_search", "");
        b = paramBundle.getString("previous_location", "");
      }
    } while (AppData.b().q().d());
    int i;
    if (localBusinessContributionType1.isMedia())
    {
      i = 2131166094;
      label139:
      if (!localBusinessContributionType1.isMedia()) {
        break label217;
      }
    }
    label173:
    label217:
    for (int j = 2131165695;; j = 2131165698)
    {
      startActivityForResult(ActivityLogin.a(this, j, i), 1049);
      return;
      setTitle(2131165464);
      break;
      if ((localBusinessContributionType1 == BusinessContributionType.BUSINESS_VIDEO) && (Features.video_capture.isEnabled()))
      {
        setTitle(2131165459);
        break;
      }
      setTitle(localBusinessContributionType1.getTitleRes());
      break;
      i = 2131166097;
      break label139;
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