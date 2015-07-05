package com.yelp.android.ui.activities.reviewpage;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.et;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.StringUtils;

public class FlagReviewExplanationFragment
  extends YelpFragment
{
  private String a;
  private String b;
  private YelpBusinessReview c;
  private EditText d;
  private et e;
  private y g;
  private final m<String> h = new x(this);
  
  public static FlagReviewExplanationFragment a(FlagReviewReasonsFragment.FlagType paramFlagType, YelpBusinessReview paramYelpBusinessReview)
  {
    FlagReviewExplanationFragment localFlagReviewExplanationFragment = new FlagReviewExplanationFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("flag_type", paramFlagType);
    localBundle.putParcelable("review", paramYelpBusinessReview);
    localFlagReviewExplanationFragment.setArguments(localBundle);
    return localFlagReviewExplanationFragment;
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    if ((e != null) && (e.isFetching())) {
      return;
    }
    e = new et(paramString1, paramString2, paramString3, h);
    e.execute(new Void[0]);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      g = ((y)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new ClassCastException("The attached activity must implement the FlagDialogShower interface!");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (FlagReviewReasonsFragment.FlagType)getArguments().getSerializable("flag_type");
    a = getString(hintResourceId);
    b = requestParam;
    c = ((YelpBusinessReview)getArguments().getParcelable("review"));
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755022, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903219, paramViewGroup, false);
    d = ((EditText)paramLayoutInflater.findViewById(2131493565));
    d.setHint(a);
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    g = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494145)
    {
      String str = d.getText().toString();
      if (TextUtils.isEmpty(StringUtils.a(str)))
      {
        cr.a(getString(2131166451), 1);
        return true;
      }
      a(c.getId(), b, str);
      AppData.a(EventIri.FlagReview);
      g.a();
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.FlagReviewExplanationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */