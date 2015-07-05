package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ew;
import com.yelp.android.appdata.webrequests.ex;
import com.yelp.android.appdata.webrequests.ey;
import com.yelp.android.serializable.MenuItem;
import com.yelp.android.serializable.MoreInfoAction;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.ReviewHighlight;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
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
      YelpLog.error(this, "Cannot obtain menu for review highlight " + k.getIdentifier());
      return;
    }
    if (m == null)
    {
      m = getLayoutInflater().inflate(2130903329, q(), false);
      q().addHeaderView(m, null, false);
      n = ((TextView)findViewById(2131493889));
      o = ((TextView)findViewById(2131493888));
      p = ((TextView)findViewById(2131493890));
      q = ((WebImageView)findViewById(2131493887));
    }
    n.setText(paramMenuItem.getName());
    Object localObject = paramMenuItem.getPrice();
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      o.setText((CharSequence)localObject);
      o.setVisibility(0);
      localObject = paramMenuItem.getPhotos();
      if ((localObject == null) || (((List)localObject).size() <= 0)) {
        break label250;
      }
      q.setImageUrl(((Photo)((List)localObject).get(0)).getThumbnailUrl());
      q.setVisibility(0);
    }
    for (;;)
    {
      paramMenuItem = paramMenuItem.getDescription();
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
  
  private void a(MoreInfoAction paramMoreInfoAction)
  {
    if (paramMoreInfoAction == null) {
      YelpLog.error(this, "Cannot obtain more info action for review highlight " + k.getIdentifier());
    }
    String str;
    do
    {
      return;
      if (r == null)
      {
        r = getLayoutInflater().inflate(2130903331, q(), false);
        q().addHeaderView(r, null, false);
        s = ((TextView)findViewById(2131493894));
        t = ((WebImageView)findViewById(2131493893));
        u = findViewById(2131493892);
      }
      s.setText(paramMoreInfoAction.getTitle());
      str = paramMoreInfoAction.getImageUrl();
      if (!TextUtils.isEmpty(str))
      {
        t.setImageUrl(str);
        t.setVisibility(0);
      }
      str = paramMoreInfoAction.getOpenUrl();
    } while (TextUtils.isEmpty(str));
    u.setClickable(true);
    u.setOnClickListener(new o(this, str, paramMoreInfoAction));
  }
  
  protected Intent a(YelpBusinessReview paramYelpBusinessReview, ArrayList<YelpBusinessReview> paramArrayList)
  {
    return ActivityReviewPager.a(this, e.getId(), e.getDisplayName(), e.getCountry(), paramArrayList, paramArrayList.indexOf(paramYelpBusinessReview), h, i, true, true, k.getIdentifier(), k.getReviewHighlightType(), k.getReviewId());
  }
  
  protected void a(Bundle paramBundle)
  {
    k = ((ReviewHighlight)paramBundle.getParcelable("extra.param.review_highlight"));
    l = paramBundle.getCharSequence("extra.param.highlight_description");
  }
  
  protected void a(SparseArray<ApiRequest<?, ?, ?>> paramSparseArray)
  {
    c = ((ApiRequest)paramSparseArray.get(0));
  }
  
  protected void a(ey paramey, YelpException paramYelpException) {}
  
  protected void a(YelpBusinessReview paramYelpBusinessReview) {}
  
  protected void a(Locale paramLocale, Collection<Locale> paramCollection)
  {
    paramLocale = (bi)b.get(d);
    paramLocale.a(true);
    a.a(2131492917, l, paramLocale);
  }
  
  protected void b(Bundle paramBundle)
  {
    paramBundle.putParcelable("extra.param.review_highlight", k);
    paramBundle.putCharSequence("extra.param.highlight_description", l);
  }
  
  public void b(ex paramex)
  {
    h = new HashMap();
    h.put(d, Integer.valueOf(b));
    switch (p.a[k.getReviewHighlightType().ordinal()])
    {
    }
    for (;;)
    {
      l = Html.fromHtml(e);
      if (a.a(2131492917) == null) {
        a(paramex);
      }
      a(a, Collections.singletonMap(d, Integer.valueOf(b)), d);
      return;
      a(c);
      a(d);
    }
  }
  
  protected ApiRequest<?, ?, ?> c()
  {
    bi localbi = (bi)b.get(d);
    int i = 0;
    if (localbi != null) {
      i = 0 + localbi.getCount();
    }
    int j = Math.min(a.getCount() / 10 * 10 + 10, 50);
    return new ew(e.getId(), k.getIdentifier(), k.getReviewHighlightType(), k.getReviewId(), i, j, new q(this));
  }
  
  protected void f()
  {
    k = ((ReviewHighlight)getIntent().getExtras().getParcelable("extra.param.review_highlight"));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessHighlightReviews;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new TreeMap();
    paramb.put("business_id", e.getId());
    paramb.put("type", k.getType());
    return paramb;
  }
  
  protected void h()
  {
    super.h();
    if ((c instanceof ew)) {
      ((ew)c).setCallback(new q(this));
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityReviewsFilteredByHighlightPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */