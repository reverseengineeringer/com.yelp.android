package com.yelp.android.ui.activities.weekly;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.bumptech.glide.h;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.eg;
import com.yelp.android.appdata.webrequests.he;
import com.yelp.android.appdata.webrequests.hf;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.i;
import com.yelp.android.serializable.WeeklyIssue;
import com.yelp.android.serializable.WeeklyIssueResponse;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.dialogs.bn;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import java.util.HashMap;
import java.util.Map;

public class ActivityWeeklyIssue
  extends YelpActivity
{
  private hf a;
  private he b;
  private BusinessAdapter<YelpBusiness> c;
  private bn d;
  private ListView e;
  private View f;
  private ImageView g;
  private WeeklyIssue h;
  private YelpBusiness i;
  private Rect j;
  private String k;
  private int l;
  private int m;
  private AbsListView.OnScrollListener n = new a(this);
  private AdapterView.OnItemClickListener o = new b(this);
  private m<WeeklyIssueResponse> p = new c(this);
  private com.yelp.android.appdata.webrequests.j<WeeklyIssueResponse> q = new d(this);
  private View.OnClickListener r = new e(this);
  private i s = new f(this);
  private m<YelpBookmark> t = new g(this);
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityWeeklyIssue.class);
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityWeeklyIssue.class);
    paramContext.putExtra("extra.market_id", paramString);
    return paramContext;
  }
  
  private void a(int paramInt)
  {
    if (d == null)
    {
      d = new bn(this);
      d.setCancelable(false);
    }
    d.setMessage(getString(paramInt));
    d.show();
  }
  
  private void a(YelpException paramYelpException)
  {
    populateError(paramYelpException);
  }
  
  private void a(WeeklyIssueResponse paramWeeklyIssueResponse)
  {
    h = paramWeeklyIssueResponse.getWeeklyIssue();
    a(false);
    disableLoading();
  }
  
  private void a(YelpBusiness paramYelpBusiness)
  {
    new com.yelp.android.appdata.webrequests.d(paramYelpBusiness, t).execute(new Void[0]);
    a(2131165345);
  }
  
  private void a(boolean paramBoolean)
  {
    if (!TextUtils.isEmpty(h.getId()))
    {
      ((TextView)f.findViewById(2131494098)).setText(h.getHeadlinePhotoTitle());
      ((TextView)f.findViewById(2131494101)).setText(h.getPublishDate());
      ((TextView)f.findViewById(2131494102)).setText(h.getMarketName());
      TextView localTextView = (TextView)f.findViewById(2131494103);
      localTextView.setText(Html.fromHtml(h.getText()));
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      g = ((ImageView)f.findViewById(2131493062));
      h.a(this).a(h.getHeadlinePhotoUrl()).a(g);
      c = new BusinessAdapter(this);
      c.a(h.getBusinesses());
      c.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.ADDRESS, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.DISTANCE, BusinessAdapter.DisplayFeature.PRICE, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.BOOKMARK_BUTTON, BusinessAdapter.DisplayFeature.DIVIDER });
      e.setOnItemClickListener(o);
      c.a(r);
      j = new Rect();
      e.addHeaderView(f, null, false);
      e.addFooterView(new View(this));
      e.setAdapter(c);
      e.setOnScrollListener(n);
    }
    if (!paramBoolean) {
      com.yelp.android.av.a.a(this, this);
    }
  }
  
  private void b(int paramInt)
  {
    AlertDialogFragment.a(null, getString(paramInt)).a(getSupportFragmentManager());
  }
  
  private void b(YelpBusiness paramYelpBusiness)
  {
    new eg(paramYelpBusiness, s).execute(new Void[0]);
    a(2131166444);
  }
  
  public ViewIri getIri()
  {
    ViewIri localViewIri = null;
    if (h != null)
    {
      if (h.getId() == null) {
        localViewIri = ViewIri.WeeklyUnavailable;
      }
    }
    else {
      return localViewIri;
    }
    return ViewIri.Weekly;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    paramb = new HashMap();
    paramb.put("market_id", k);
    return paramb;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        return;
      } while ((paramInt2 != -1) || (i == null));
      a(i);
      return;
    } while ((paramInt2 != -1) || (i == null));
    b(i);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903120);
    e = ((ListView)findViewById(16908298));
    PanelError localPanelError = createErrorPanel();
    localPanelError.setText(2131166060);
    e.setEmptyView(localPanelError);
    f = getLayoutInflater().inflate(2130903438, e, false);
    k = getIntent().getStringExtra("extra.market_id");
    if (paramBundle != null)
    {
      h = ((WeeklyIssue)paramBundle.getParcelable("weekly_issue"));
      i = ((YelpBusiness)paramBundle.getParcelable("business_to_bookmark"));
      if (h != null) {
        a(true);
      }
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("request_weekly_issue", a);
    freezeRequest("request_weekly_issue_from_location", b);
    disableLoading();
  }
  
  protected void onResume()
  {
    super.onResume();
    if (h == null)
    {
      if (k == null)
      {
        b = ((he)thawRequest("request_weekly_issue_from_location", null, q));
        if (b == null)
        {
          b = new he(q);
          b.executeWithLocation(new Void[0]);
        }
        enableLoading(b);
      }
    }
    else {
      return;
    }
    a = ((hf)thawRequest("request_weekly_issue", null, p));
    if (a == null)
    {
      a = new hf(k, p);
      a.execute(new Void[0]);
    }
    enableLoading(a);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelable("weekly_issue", h);
    paramBundle.putParcelable("business_to_bookmark", i);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.weekly.ActivityWeeklyIssue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */