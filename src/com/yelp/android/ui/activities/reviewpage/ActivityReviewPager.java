package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dx;
import com.yelp.android.appdata.webrequests.dx.a;
import com.yelp.android.appdata.webrequests.dy;
import com.yelp.android.appdata.webrequests.dy.a;
import com.yelp.android.serializable.ReviewBroadcast;
import com.yelp.android.serializable.ReviewHighlight.ReviewHighlightType;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.widgets.ReviewPagerFragment;
import com.yelp.android.ui.widgets.ReviewPagerFragment.b;
import com.yelp.android.util.ObjectDirtyEvent;
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
  private List<a> f;
  private int g;
  private Locale h;
  private int i;
  private boolean j = false;
  private String k;
  private ReviewHighlight.ReviewHighlightType l;
  private Map<Locale, Integer> m;
  private ArrayList<Locale> n;
  private String o;
  private dx p;
  private dy q;
  private final ApiRequest.b<dy.a> r = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, dy.a paramAnonymousa)
    {
      paramAnonymousApiRequest = a.iterator();
      while (paramAnonymousApiRequest.hasNext())
      {
        YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)paramAnonymousApiRequest.next();
        localYelpBusinessReview.a(new Locale(localYelpBusinessReview.I(), c.getCountry()));
      }
      a(a);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      a(paramAnonymousYelpException);
    }
  };
  private final ApiRequest.b<dx.a> s = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, dx.a paramAnonymousa)
    {
      a(a);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      a(paramAnonymousYelpException);
    }
  };
  
  public static Intent a(Context paramContext, YelpBusinessReview paramYelpBusinessReview, String paramString1, String paramString2, String paramString3)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramYelpBusinessReview);
    Locale localLocale2 = paramYelpBusinessReview.o();
    Locale localLocale1 = localLocale2;
    if (localLocale2 == null) {
      if (paramYelpBusinessReview.I() == null) {
        break label92;
      }
    }
    label92:
    for (localLocale1 = new Locale(paramYelpBusinessReview.I(), AppData.b().g().h().getCountry());; localLocale1 = AppData.b().g().h())
    {
      paramYelpBusinessReview.a(localLocale1);
      return a(paramContext, paramString2, paramString1, paramString3, localArrayList, 0, Collections.singletonMap(localLocale1, Integer.valueOf(1)), null);
    }
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    paramContext = new Intent(paramContext, ActivityReviewPager.class);
    paramContext.putExtra("business_id", paramString2);
    paramContext.putExtra("business_review_id", paramString1);
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
  
  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, List<YelpBusinessReview> paramList, int paramInt, Map<Locale, Integer> paramMap, ArrayList<Locale> paramArrayList, boolean paramBoolean)
  {
    paramContext = ActivityAbstractReviewPager.a(paramContext, paramString1, paramString2, paramString3, paramList, paramInt, paramBoolean, ActivityReviewPager.class);
    if (paramMap != null) {
      paramContext.putParcelableArrayListExtra("locale_review_counts.extra", LocaleCount.a(paramMap));
    }
    if (paramArrayList != null) {
      paramContext.putExtra("review_languages.extra", paramArrayList);
    }
    return paramContext;
  }
  
  private void a(String paramString)
  {
    Locale localLocale = AppData.b().g().h();
    q = new dy(a, 0, 1, localLocale, r);
    q.a(paramString);
    enableLoading();
    q.f(new Void[0]);
  }
  
  private void a(boolean paramBoolean)
  {
    Pair localPair = a(paramBoolean, i - g);
    int i1 = ((Integer)first).intValue();
    int i2 = ((Integer)second).intValue();
    if (j) {
      if ((p == null) || (!p.u()))
      {
        p = new dx(a, k, l, o, i2, i1, s);
        p.f(new Void[0]);
      }
    }
    for (;;)
    {
      enableLoading();
      return;
      if ((q == null) || (!q.u()))
      {
        q = new dy(a, i2, i1, h, r);
        q.f(new Void[0]);
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
        f.add(new a(i1, localLocale, (Locale)localObject));
      }
      i2 = localInteger.intValue();
      localObject = localLocale;
    }
  }
  
  private void g()
  {
    registerDirtyEventReceiver("com.yelp.android.review.state.update", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = (ReviewBroadcast)ObjectDirtyEvent.a(paramAnonymousIntent);
        if ((paramAnonymousContext.e() == ReviewState.FINISHED_RECENTLY) && (paramAnonymousContext.c().equals(d())))
        {
          c().a(paramAnonymousContext.b());
          d.g();
        }
      }
    });
    registerDirtyEventReceiver("com.yelp.android.review.translate", new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = ObjectDirtyEvent.c(paramAnonymousIntent).iterator();
        while (paramAnonymousContext.hasNext())
        {
          paramAnonymousIntent = (YelpBusinessReview)paramAnonymousContext.next();
          int i = c.indexOf(paramAnonymousIntent);
          if (i >= 0) {
            c.set(i, paramAnonymousIntent);
          }
          d.a(paramAnonymousIntent);
        }
      }
    });
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
  
  protected ReviewPagerFragment.b b()
  {
    new ReviewPagerFragment.b()
    {
      public void a(boolean paramAnonymousBoolean, int paramAnonymousInt)
      {
        ActivityReviewPager.a(ActivityReviewPager.this, paramAnonymousInt);
        if (ActivityReviewPager.a(ActivityReviewPager.this).isEmpty())
        {
          ActivityReviewPager.a(ActivityReviewPager.this, paramAnonymousBoolean);
          return;
        }
        Object localObject = ActivityReviewPager.a(ActivityReviewPager.this).iterator();
        ActivityReviewPager.a locala;
        do
        {
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          locala = (ActivityReviewPager.a)((Iterator)localObject).next();
        } while (locala.a() <= paramAnonymousInt);
        for (localObject = locala.c();; localObject = null)
        {
          int i;
          if (localObject == null)
          {
            i = ActivityReviewPager.a(ActivityReviewPager.this).size() - 1;
            if (i >= 0) {
              if (paramAnonymousInt >= ((ActivityReviewPager.a)ActivityReviewPager.a(ActivityReviewPager.this).get(i)).a())
              {
                locala = (ActivityReviewPager.a)ActivityReviewPager.a(ActivityReviewPager.this).get(i);
                localObject = locala.b();
              }
            }
          }
          for (;;)
          {
            ActivityReviewPager localActivityReviewPager = ActivityReviewPager.this;
            if (locala != null) {}
            for (paramAnonymousInt = locala.a();; paramAnonymousInt = 0)
            {
              ActivityReviewPager.b(localActivityReviewPager, paramAnonymousInt);
              ActivityReviewPager.a(ActivityReviewPager.this, (Locale)localObject);
              ActivityReviewPager.a(ActivityReviewPager.this, paramAnonymousBoolean);
              return;
              i -= 1;
              break;
            }
            locala = null;
          }
        }
      }
    };
  }
  
  protected boolean e()
  {
    if (((q != null) && (q.u())) || ((p != null) && (p.u()))) {
      return true;
    }
    return super.e();
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
      m = LocaleCount.a(paramBundle.getParcelableArrayList("review_counts"));
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
        m = LocaleCount.a(localIntent.getParcelableArrayListExtra("locale_review_counts.extra"));
      }
      n = new ArrayList();
      if (localIntent.hasExtra("review_languages.extra")) {
        n.addAll((ArrayList)localIntent.getSerializableExtra("review_languages.extra"));
      }
      if (localIntent.hasExtra("reviews_extra"))
      {
        if (!c.isEmpty()) {
          h = ((YelpBusinessReview)c.get(0)).o();
        } else {
          h = getResourcesgetConfigurationlocale;
        }
      }
      else
      {
        paramBundle = localIntent.getStringExtra("business_review_id");
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
    q = ((dy)thawRequest("reviews", q, r));
    p = ((dx)thawRequest("filtered_reviews", p, s));
    super.onResume();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("review_counts", LocaleCount.a(m));
    paramBundle.putSerializable("review_languages", n);
    paramBundle.putString("review_highlight_id", k);
    paramBundle.putSerializable("review_highlight_type", l);
    paramBundle.putBoolean("displays_filtered_reviews", j);
    paramBundle.putString("highlighted_review_id", o);
    paramBundle.putSerializable("next_request_locale", h);
  }
  
  private class a
  {
    private final Locale b;
    private final Locale c;
    private final int d;
    
    public a(int paramInt, Locale paramLocale1, Locale paramLocale2)
    {
      d = paramInt;
      b = paramLocale1;
      c = paramLocale2;
    }
    
    public int a()
    {
      return d;
    }
    
    public Locale b()
    {
      return b;
    }
    
    public Locale c()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityReviewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */