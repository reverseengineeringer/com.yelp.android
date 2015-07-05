package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ew;
import com.yelp.android.appdata.webrequests.ex;
import com.yelp.android.appdata.webrequests.ey;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.serializable.ReviewHighlight.ReviewHighlightType;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.widgets.ah;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class ActivityReviewPager
  extends ActivityAbstractReviewPager
{
  private List<n> f;
  private int g;
  private Locale h;
  private int i;
  private boolean j = false;
  private String k;
  private ReviewHighlight.ReviewHighlightType l;
  private Map<Locale, Integer> m;
  private ArrayList<Locale> n;
  private String o;
  private ew p;
  private ey q;
  private final com.yelp.android.appdata.webrequests.m<ez> r = new j(this);
  private final com.yelp.android.appdata.webrequests.m<ex> s = new k(this);
  
  public static Intent a(Context paramContext, YelpBusinessReview paramYelpBusinessReview, String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramYelpBusinessReview);
    Locale localLocale = paramYelpBusinessReview.getLocale();
    paramYelpBusinessReview = localLocale;
    if (localLocale == null) {
      paramYelpBusinessReview = AppData.b().g().h();
    }
    return a(paramContext, paramString2, paramString1, paramString3, localArrayList, 0, Collections.singletonMap(paramYelpBusinessReview, Integer.valueOf(1)), null);
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, ActivityReviewPager.class);
    paramContext.putExtra("business_id", paramString2);
    paramContext.putExtra("review_id.extra", paramString1);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramContext = a(paramContext, paramString1, paramString2);
    paramContext.putExtra("business_name", paramString3);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, ArrayList<YelpBusinessReview> paramArrayList, int paramInt, Map<Locale, Integer> paramMap, ArrayList<Locale> paramArrayList1)
  {
    return a(paramContext, paramString1, paramString2, paramString3, paramArrayList, paramInt, paramMap, paramArrayList1, false);
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, ArrayList<YelpBusinessReview> paramArrayList, int paramInt, Map<Locale, Integer> paramMap, ArrayList<Locale> paramArrayList1, boolean paramBoolean1, boolean paramBoolean2, String paramString4, ReviewHighlight.ReviewHighlightType paramReviewHighlightType, String paramString5)
  {
    paramContext = a(paramContext, paramString1, paramString2, paramString3, paramArrayList, paramInt, paramMap, paramArrayList1, paramBoolean1);
    paramContext.putExtra("displays_filtered_reviews.extra", paramBoolean2);
    paramContext.putExtra("review_highlight_identifier.extra", paramString4);
    paramContext.putExtra("review_highlight_type.extra", paramReviewHighlightType);
    paramContext.putExtra("highlighted_review_id.extra", paramString5);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, List<YelpBusinessReview> paramList, int paramInt)
  {
    return a(paramContext, paramString1, paramString2, paramString3, paramList, paramInt, null, null, false);
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, List<YelpBusinessReview> paramList, int paramInt, Map<Locale, Integer> paramMap, ArrayList<Locale> paramArrayList, boolean paramBoolean)
  {
    paramContext = ActivityAbstractReviewPager.a(paramContext, paramString1, paramString2, paramString3, paramList, paramInt, paramBoolean, ActivityReviewPager.class);
    if (paramMap != null) {
      paramContext.putParcelableArrayListExtra("locale_review_counts.extra", LocaleCount.mapToList(paramMap));
    }
    if (paramArrayList != null) {
      paramContext.putExtra("review_languages.extra", paramArrayList);
    }
    return paramContext;
  }
  
  public static YelpBusinessReview a(Intent paramIntent)
  {
    return (YelpBusinessReview)paramIntent.getParcelableExtra("extra.review");
  }
  
  private void a(String paramString)
  {
    Locale localLocale = AppData.b().g().h();
    q = new ey(a, 0, 1, localLocale, r);
    q.a(paramString);
    enableLoading();
    q.execute(new String[0]);
  }
  
  private void a(boolean paramBoolean)
  {
    Pair localPair = a(paramBoolean, i - g);
    int i1 = ((Integer)first).intValue();
    int i2 = ((Integer)second).intValue();
    if (j) {
      if ((p == null) || (!p.isFetching()))
      {
        p = new ew(a, k, l, o, i2, i1, s);
        p.execute(new String[0]);
      }
    }
    for (;;)
    {
      enableLoading();
      return;
      if ((q == null) || (!q.isFetching()))
      {
        q = new ey(a, i2, i1, h, r);
        q.execute(new String[0]);
      }
    }
  }
  
  private void f()
  {
    Iterator localIterator = n.iterator();
    Object localObject = null;
    int i2;
    for (int i1 = 0; localIterator.hasNext(); i1 = i2 + i1)
    {
      Locale localLocale = (Locale)localIterator.next();
      Integer localInteger = (Integer)m.get(localLocale);
      if ((i1 > 0) && (localObject != null)) {
        f.add(new n(this, i1, localLocale, (Locale)localObject));
      }
      i2 = localInteger.intValue();
      localObject = localLocale;
    }
  }
  
  private void g()
  {
    registerDirtyEventReceiver("com.yelp.android.review.state.update", new l(this));
    registerDirtyEventReceiver("com.yelp.android.review.translate", new m(this));
  }
  
  protected int a()
  {
    return a(m);
  }
  
  public int a(Map<Locale, Integer> paramMap)
  {
    paramMap = paramMap.values().iterator();
    for (int i1 = 0; paramMap.hasNext(); i1 = ((Integer)paramMap.next()).intValue() + i1) {}
    int i2 = i1;
    if (i1 == 0) {
      i2 = 1;
    }
    return i2;
  }
  
  protected ah b()
  {
    return new i(this);
  }
  
  protected boolean e()
  {
    if (((q != null) && (q.isFetching())) || ((p != null) && (p.isFetching()))) {
      return true;
    }
    return super.e();
  }
  
  public void onBackPressed()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("extra.review", c());
    setResult(-1, localIntent);
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    f = new ArrayList();
    if (paramBundle != null)
    {
      k = paramBundle.getString("review_highlight_id");
      l = ((ReviewHighlight.ReviewHighlightType)paramBundle.getSerializable("review_highlight_type"));
      j = paramBundle.getBoolean("displays_filtered_reviews");
      m = LocaleCount.listToMap(paramBundle.getParcelableArrayList("review_counts"));
      n = ((ArrayList)paramBundle.getSerializable("review_languages"));
      o = paramBundle.getString("highlighted_review_id");
      h = ((Locale)paramBundle.getSerializable("next_request_locale"));
      g = paramBundle.getInt("next_request_locale");
    }
    for (;;)
    {
      f();
      g();
      return;
      j = localIntent.getExtras().getBoolean("displays_filtered_reviews.extra");
      k = localIntent.getExtras().getString("review_highlight_identifier.extra");
      l = ((ReviewHighlight.ReviewHighlightType)localIntent.getExtras().getSerializable("review_highlight_type.extra"));
      o = localIntent.getExtras().getString("highlighted_review_id.extra");
      m = new HashMap();
      if (localIntent.hasExtra("locale_review_counts.extra")) {
        m = LocaleCount.listToMap(localIntent.getParcelableArrayListExtra("locale_review_counts.extra"));
      }
      n = new ArrayList();
      if (localIntent.hasExtra("review_languages.extra")) {
        n.addAll((ArrayList)localIntent.getSerializableExtra("review_languages.extra"));
      }
      if (localIntent.hasExtra("reviews_extra"))
      {
        if (!c.isEmpty()) {
          h = ((YelpBusinessReview)c.get(0)).getLocale();
        } else {
          h = getResourcesgetConfigurationlocale;
        }
      }
      else
      {
        paramBundle = localIntent.getStringExtra("review_id.extra");
        if (!TextUtils.isEmpty(paramBundle)) {
          a(paramBundle);
        }
      }
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("filtered_reviews", p);
    freezeRequest("reviews", q);
  }
  
  protected void onResume()
  {
    q = ((ey)thawRequest("reviews", q, r));
    p = ((ew)thawRequest("filtered_reviews", p, s));
    super.onResume();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("review_counts", LocaleCount.mapToList(m));
    paramBundle.putSerializable("review_languages", n);
    paramBundle.putString("review_highlight_id", k);
    paramBundle.putSerializable("review_highlight_type", l);
    paramBundle.putBoolean("displays_filtered_reviews", j);
    paramBundle.putString("highlighted_review_id", o);
    paramBundle.putSerializable("next_request_locale", h);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityReviewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */