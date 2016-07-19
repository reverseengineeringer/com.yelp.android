package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dx;
import com.yelp.android.appdata.webrequests.dx.a;
import com.yelp.android.appdata.webrequests.dy;
import com.yelp.android.serializable.MenuItem;
import com.yelp.android.serializable.MoreInfoAction;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.ReviewHighlight;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.YelpLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

public class ActivityReviewsFilteredByHighlightPage
  extends ActivityAbstractReviewPage
{
  private ReviewHighlight k;
  private CharSequence l;
  private View m;
  private TextView n;
  private TextView o;
  private TextView p;
  private WebImageView q;
  private View r;
  private TextView s;
  private WebImageView t;
  private View u;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, ReviewHighlight paramReviewHighlight)
  {
    paramContext = new Intent(paramContext, ActivityReviewsFilteredByHighlightPage.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    paramContext.putExtra("extra.param.review_highlight", paramReviewHighlight);
    return paramContext;
  }
  
  private void a(MenuItem paramMenuItem)
  {
    if (paramMenuItem == null)
    {
      YelpLog.remoteError(this, "Cannot obtain menu for review highlight " + k.f());
      return;
    }
    if (m == null)
    {
      m = getLayoutInflater().inflate(2130903428, r(), false);
      r().addHeaderView(m, null, false);
      n = ((TextView)findViewById(2131690727));
      o = ((TextView)findViewById(2131690726));
      p = ((TextView)findViewById(2131690728));
      q = ((WebImageView)findViewById(2131690725));
    }
    n.setText(paramMenuItem.c());
    Object localObject = paramMenuItem.b();
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      o.setText((CharSequence)localObject);
      o.setVisibility(0);
      localObject = paramMenuItem.d();
      if ((localObject == null) || (((List)localObject).size() <= 0)) {
        break label250;
      }
      q.setImageUrl(((Photo)((List)localObject).get(0)).f());
      q.setVisibility(0);
    }
    for (;;)
    {
      paramMenuItem = paramMenuItem.a();
      if (TextUtils.isEmpty(paramMenuItem)) {
        break label262;
      }
      p.setText(paramMenuItem);
      p.setVisibility(0);
      return;
      o.setVisibility(8);
      break;
      label250:
      q.setVisibility(8);
    }
    label262:
    p.setVisibility(8);
  }
  
  private void a(final MoreInfoAction paramMoreInfoAction)
  {
    if (paramMoreInfoAction == null) {
      YelpLog.remoteError(this, "Cannot obtain more info action for review highlight " + k.f());
    }
    final String str;
    do
    {
      return;
      if (r == null)
      {
        r = getLayoutInflater().inflate(2130903430, r(), false);
        r().addHeaderView(r, null, false);
        s = ((TextView)findViewById(2131690732));
        t = ((WebImageView)findViewById(2131690731));
        u = findViewById(2131690730);
      }
      s.setText(paramMoreInfoAction.c());
      str = paramMoreInfoAction.a();
      if (!TextUtils.isEmpty(str))
      {
        t.setImageUrl(str);
        t.setVisibility(0);
      }
      str = paramMoreInfoAction.b();
    } while (TextUtils.isEmpty(str));
    u.setClickable(true);
    u.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.a(EventIri.BusinessHighlightReviewsMoreInfo);
        paramAnonymousView = WebViewActivity.getWebIntent(ActivityReviewsFilteredByHighlightPage.this, Uri.parse(str), paramMoreInfoAction.c(), ViewIri.BusinessMenu, EnumSet.noneOf(WebViewActivity.Feature.class), WebViewActivity.BackBehavior.NONE);
        startActivity(paramAnonymousView);
      }
    });
  }
  
  protected Intent a(YelpBusinessReview paramYelpBusinessReview, ArrayList<YelpBusinessReview> paramArrayList)
  {
    return ActivityReviewPager.a(this, e.aD(), e.z(), e.aw(), paramArrayList, paramArrayList.indexOf(paramYelpBusinessReview), h, i, true, true, k.f(), k.a(), k.d());
  }
  
  protected void a(Bundle paramBundle)
  {
    k = ((ReviewHighlight)paramBundle.getParcelable("extra.param.review_highlight"));
    l = paramBundle.getCharSequence("extra.param.highlight_description");
  }
  
  protected void a(SparseArray<ApiRequest<Void, ?, ?>> paramSparseArray)
  {
    c = ((ApiRequest)paramSparseArray.get(0));
  }
  
  protected void a(dy paramdy, YelpException paramYelpException) {}
  
  protected void a(YelpBusinessReview paramYelpBusinessReview) {}
  
  protected void a(Locale paramLocale, Collection<Locale> paramCollection)
  {
    paramLocale = (e)b.get(d);
    paramLocale.a(true);
    a.a(2131689533, l, paramLocale);
  }
  
  protected ApiRequest<Void, ?, ?> b()
  {
    e locale = (e)b.get(d);
    int i = 0;
    if (locale != null) {
      i = 0 + locale.getCount();
    }
    int j = Math.min(a.getCount() / 10 * 10 + 10, 50);
    return new dx(e.aD(), k.f(), k.a(), k.d(), i, j, new a(this));
  }
  
  protected void b(Bundle paramBundle)
  {
    paramBundle.putParcelable("extra.param.review_highlight", k);
    paramBundle.putCharSequence("extra.param.highlight_description", l);
  }
  
  public void b(dx.a parama)
  {
    h = new HashMap();
    h.put(d, Integer.valueOf(b));
    switch (2.a[k.a().ordinal()])
    {
    }
    for (;;)
    {
      l = Html.fromHtml(e);
      if (a.a(2131689533) == null) {
        a(parama);
      }
      a(a, Collections.singletonMap(d, Integer.valueOf(b)), d);
      return;
      a(c);
      a(d);
    }
  }
  
  protected void f()
  {
    k = ((ReviewHighlight)getIntent().getExtras().getParcelable("extra.param.review_highlight"));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessHighlightReviews;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    parama = AppData.b().r().c();
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("business_id", e.aD());
    localTreeMap.put("type", k.g());
    if (!Double.isNaN(e.a(parama))) {
      localTreeMap.put("distanceFromBusiness", Double.valueOf(e.a(parama)));
    }
    return localTreeMap;
  }
  
  protected void i()
  {
    super.i();
    if ((c instanceof dx)) {
      ((dx)c).a(new a(this));
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  private static class a
    implements ApiRequest.b<dx.a>
  {
    private final WeakReference<ActivityReviewsFilteredByHighlightPage> a;
    
    public a(ActivityReviewsFilteredByHighlightPage paramActivityReviewsFilteredByHighlightPage)
    {
      a = new WeakReference(paramActivityReviewsFilteredByHighlightPage);
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, dx.a parama)
    {
      paramApiRequest = (ActivityReviewsFilteredByHighlightPage)a.get();
      if (paramApiRequest != null) {
        paramApiRequest.b(parama);
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      ActivityReviewsFilteredByHighlightPage localActivityReviewsFilteredByHighlightPage = (ActivityReviewsFilteredByHighlightPage)a.get();
      if (localActivityReviewsFilteredByHighlightPage != null) {
        localActivityReviewsFilteredByHighlightPage.onError(paramApiRequest, paramYelpException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityReviewsFilteredByHighlightPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */