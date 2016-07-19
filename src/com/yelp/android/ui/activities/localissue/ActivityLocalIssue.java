package com.yelp.android.ui.activities.localissue;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.LocalIssueFromLocationRequest;
import com.yelp.android.appdata.webrequests.LocalIssueFromLocationRequest.LocalIssueSource;
import com.yelp.android.appdata.webrequests.LocalIssueRequest;
import com.yelp.android.appdata.webrequests.LocalIssueRequest.IdType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.LocalIssue;
import com.yelp.android.serializable.LocalIssueResponse;
import com.yelp.android.serializable.LocalIssueSponsor;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.LocalIssueShareFormatter;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.widgets.e;
import com.yelp.android.util.c;
import com.yelp.android.util.c.a;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

public class ActivityLocalIssue
  extends YelpActivity
{
  private LocalIssueRequest a;
  private LocalIssueFromLocationRequest b;
  private BusinessAdapter<YelpBusiness> c;
  private ListView d;
  private View e;
  private ImageView f;
  private LocalIssue g;
  private YelpBusiness h;
  private String i;
  private int j;
  private c k;
  private t l;
  private AdapterView.OnItemClickListener m = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = ActivityLocalIssue.d(ActivityLocalIssue.this).a(paramAnonymousInt - ActivityLocalIssue.c(ActivityLocalIssue.this).getHeaderViewsCount());
      paramAnonymousView = ActivityLocalIssue.b(ActivityLocalIssue.this);
      paramAnonymousView.put("biz_id", paramAnonymousAdapterView.aD());
      AppData.a(EventIri.LocalIssueBusinessClicked, paramAnonymousView);
      startActivity(ActivityBusinessPage.b(ActivityLocalIssue.this, paramAnonymousAdapterView));
    }
  };
  private ApiRequest.b<LocalIssueResponse> n = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, LocalIssueResponse paramAnonymousLocalIssueResponse)
    {
      ActivityLocalIssue.a(ActivityLocalIssue.this, paramAnonymousLocalIssueResponse);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      ActivityLocalIssue.a(ActivityLocalIssue.this, paramAnonymousYelpException);
    }
  };
  private k.b<LocalIssueResponse> o = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, LocalIssueResponse paramAnonymousLocalIssueResponse)
    {
      ActivityLocalIssue.a(ActivityLocalIssue.this, paramAnonymousLocalIssueResponse);
    }
    
    public boolean a()
    {
      return false;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      ActivityLocalIssue.a(ActivityLocalIssue.this, paramAnonymousYelpException);
    }
  };
  private View.OnClickListener p = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      ActivityLocalIssue.a(ActivityLocalIssue.this, ((Integer)paramAnonymousView.getTag()).intValue());
      ActivityLocalIssue.a(ActivityLocalIssue.this, ActivityLocalIssue.d(ActivityLocalIssue.this).a(ActivityLocalIssue.e(ActivityLocalIssue.this)));
      Map localMap = ActivityLocalIssue.b(ActivityLocalIssue.this);
      localMap.put("biz_id", ActivityLocalIssue.f(ActivityLocalIssue.this).aD());
      AppData.a(EventIri.LocalIssueBookmarkClicked, localMap);
      if (ActivityLocalIssue.f(ActivityLocalIssue.this).U()) {}
      for (paramAnonymousView = EventIri.LocalIssueRemoveBookmark;; paramAnonymousView = EventIri.LocalIssueAddBookmark)
      {
        AppData.a(paramAnonymousView, localMap);
        ActivityLocalIssue.g(ActivityLocalIssue.this).a(ActivityLocalIssue.f(ActivityLocalIssue.this));
        return;
      }
    }
  };
  private c.a q = new c.a()
  {
    public void a(boolean paramAnonymousBoolean)
    {
      ActivityLocalIssue.f(ActivityLocalIssue.this).a(paramAnonymousBoolean);
      ActivityLocalIssue.a(ActivityLocalIssue.this, null);
      ActivityLocalIssue.d(ActivityLocalIssue.this).notifyDataSetChanged();
    }
  };
  private View.OnClickListener r = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = ActivityLocalIssue.d(ActivityLocalIssue.this).a(((Integer)paramAnonymousView.getTag()).intValue());
      startActivity(ActivityReviewPager.a(ActivityLocalIssue.this, paramAnonymousView.Y(), paramAnonymousView.z(), paramAnonymousView.aD(), paramAnonymousView.aw()));
    }
  };
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityLocalIssue.class);
  }
  
  public static Intent a(Context paramContext, LocalIssue paramLocalIssue)
  {
    paramContext = a(paramContext);
    paramContext.putExtra("extra.local_issue", paramLocalIssue);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityLocalIssue.class);
    paramContext.putExtra("market_id", paramString);
    return paramContext;
  }
  
  private View a(LocalIssueSponsor paramLocalIssueSponsor)
  {
    View localView = LayoutInflater.from(this).inflate(2130903278, d, false);
    ((TextView)localView.findViewById(2131690346)).setText(paramLocalIssueSponsor.e());
    TextView localTextView = (TextView)localView.findViewById(2131690347);
    if (TextUtils.isEmpty(paramLocalIssueSponsor.b())) {
      localTextView.setVisibility(8);
    }
    for (;;)
    {
      localTextView = (TextView)localView.findViewById(2131689503);
      localTextView.setText(Html.fromHtml(paramLocalIssueSponsor.a()));
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      l.a(paramLocalIssueSponsor.d()).a((ImageView)localView.findViewById(2131689747));
      localView.findViewById(2131690345).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = Uri.parse(ActivityLocalIssue.a(ActivityLocalIssue.this).i().c());
          AppData.a(EventIri.LocalIssueSponsorClicked, ActivityLocalIssue.b(ActivityLocalIssue.this));
          startActivity(WebViewActivity.getWebIntent(ActivityLocalIssue.this, paramAnonymousView, "", ViewIri.OpenURL, EnumSet.noneOf(WebViewActivity.Feature.class), WebViewActivity.BackBehavior.NONE, false));
        }
      });
      return localView;
      localTextView.setText(paramLocalIssueSponsor.b());
    }
  }
  
  private Map<String, Object> a()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("market_id", i);
    localHashMap.put("issue_id", g.h());
    return localHashMap;
  }
  
  private void a(YelpException paramYelpException)
  {
    d.getEmptyView().setVisibility(8);
    populateError(paramYelpException);
  }
  
  private void a(LocalIssueResponse paramLocalIssueResponse)
  {
    g = paramLocalIssueResponse.a();
    i = g.f();
    a(true);
    disableLoading();
  }
  
  private void a(boolean paramBoolean)
  {
    if (!TextUtils.isEmpty(g.h()))
    {
      ((TextView)e.findViewById(2131689641)).setText(g.d());
      ((TextView)e.findViewById(2131690342)).setText(g.b());
      ((TextView)e.findViewById(2131690343)).setText(g.e());
      TextView localTextView = (TextView)e.findViewById(2131690344);
      localTextView.setText(Html.fromHtml(g.g()));
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      f = ((ImageView)e.findViewById(2131689747));
      l.a(g.c()).a(f);
      c = new BusinessAdapter(this);
      c.a(g.k());
      c.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.ADDRESS, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.DISTANCE, BusinessAdapter.DisplayFeature.PRICE, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.BOOKMARK_BUTTON, BusinessAdapter.DisplayFeature.REVIEW_EXCERPT, BusinessAdapter.DisplayFeature.DIVIDER });
      d.setOnItemClickListener(m);
      c.a(p);
      c.b(r);
      if (g.i() != null)
      {
        d.addFooterView(a(g.i()), "FOOTER", false);
        AppData.a(ViewIri.LocalIssueSponsor);
      }
      d.addFooterView(new View(this));
      d.setAdapter(c);
    }
    if (paramBoolean) {
      MetricsManager.a(this, this);
    }
  }
  
  public static Intent b(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityLocalIssue.class);
    paramContext.putExtra("issue_id", paramString);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    ViewIri localViewIri = null;
    if (g != null)
    {
      if (g.h() == null) {
        localViewIri = ViewIri.LocalIssueUnavailable;
      }
    }
    else {
      return localViewIri;
    }
    return ViewIri.LocalIssue;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return a();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    h = k.a(paramInt1, paramInt2, h);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903105);
    l = t.a(this);
    d = ((ListView)findViewById(16908298));
    e = new e(d, 2130903277).a();
    Object localObject = createErrorPanel();
    ((PanelError)localObject).setText(2131166118);
    d.setEmptyView((View)localObject);
    g = ((LocalIssue)getIntent().getParcelableExtra("extra.local_issue"));
    if (g != null) {}
    for (localObject = g.f();; localObject = getIntent().getStringExtra("market_id"))
    {
      i = ((String)localObject);
      if (paramBundle != null)
      {
        g = ((LocalIssue)paramBundle.getParcelable("local_issue"));
        h = ((YelpBusiness)paramBundle.getParcelable("business_to_bookmark"));
      }
      k = new c(this, q, h);
      if (g != null) {
        a(false);
      }
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755029, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    do
    {
      return super.onOptionsItemSelected(paramMenuItem);
    } while ((g == null) || (g.a() == null));
    showShareSheet(new LocalIssueShareFormatter(g));
    AppData.a(EventIri.LocalIssueOpenShareSheet, a());
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("request_local_issue", a);
    freezeRequest("request_local_issue_from_location", b);
    freezeRequest("request_add_bookmark", k.a());
    freezeRequest("request_remove_bookmark", k.b());
    disableLoading();
  }
  
  protected void onResume()
  {
    super.onResume();
    String str = getIntent().getStringExtra("issue_id");
    LocalIssueRequest.IdType localIdType;
    if (g == null)
    {
      if ((i == null) && (str == null)) {
        break label158;
      }
      a = ((LocalIssueRequest)thawRequest("request_local_issue", null, n));
      if (a == null)
      {
        if (i == null) {
          break label151;
        }
        localIdType = LocalIssueRequest.IdType.MARKET_ID;
        if (i != null) {
          str = i;
        }
        a = new LocalIssueRequest(localIdType, str, n);
        a.f(new Void[0]);
      }
      enableLoading(a);
    }
    for (;;)
    {
      thawRequest("request_remove_bookmark", null, k.d());
      thawRequest("request_add_bookmark", null, k.c());
      return;
      label151:
      localIdType = LocalIssueRequest.IdType.ISSUE_ID;
      break;
      label158:
      b = ((LocalIssueFromLocationRequest)thawRequest("request_local_issue_from_location", null, o));
      if (b == null)
      {
        b = new LocalIssueFromLocationRequest(LocalIssueFromLocationRequest.LocalIssueSource.MENU, o);
        b.a(new Void[0]);
      }
      enableLoading(b);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("local_issue", g);
    paramBundle.putParcelable("business_to_bookmark", h);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.localissue.ActivityLocalIssue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */