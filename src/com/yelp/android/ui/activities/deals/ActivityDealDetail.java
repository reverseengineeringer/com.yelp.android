package com.yelp.android.ui.activities.deals;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Html;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ax;
import com.yelp.android.appdata.webrequests.ax.a;
import com.yelp.android.appdata.webrequests.ba;
import com.yelp.android.appdata.webrequests.bb;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.MapSpan;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpDeal.a;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import com.yelp.android.ui.activities.reviewpage.c;
import com.yelp.android.ui.activities.support.YelpMapActivity;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.b;
import com.yelp.android.ui.map.j;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.util.AnalyticsSpan;
import com.yelp.android.ui.util.an;
import com.yelp.android.ui.util.an.a;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ActivityDealDetail
  extends YelpMapActivity
  implements RadioGroup.OnCheckedChangeListener, ApiRequest.b<YelpDeal>
{
  public static String a = "deal_id";
  private static String p = "deal";
  private static String q = "business_array";
  private static String r = "reviews_array";
  private static String s = "tab";
  private static String t = "span";
  private static int u = 4;
  private YelpBusiness A;
  private String B;
  private MapSpan C;
  private YelpMap<YelpBusiness> D;
  private int E;
  private PanelLoading F;
  private SparseArray<b> G;
  an b;
  bb c;
  ax d;
  ba e;
  BusinessAdapter<YelpBusiness> f;
  c g = new c();
  ListView h;
  FrameLayout i;
  ViewGroup j;
  w<CharSequence> k = new w()
  {
    public void a(List<CharSequence> paramAnonymousList)
    {
      ArrayList localArrayList = new ArrayList(paramAnonymousList.size());
      Iterator localIterator = paramAnonymousList.iterator();
      if (localIterator.hasNext())
      {
        paramAnonymousList = new SpannableString((CharSequence)localIterator.next());
        if (!Linkify.addLinks(paramAnonymousList, 15)) {
          break label79;
        }
        paramAnonymousList = AnalyticsSpan.a(paramAnonymousList, EventIri.OpenUrl);
      }
      label79:
      for (;;)
      {
        localArrayList.add(paramAnonymousList);
        break;
        super.a(localArrayList);
        return;
      }
    }
    
    public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
    {
      paramAnonymousViewGroup = paramAnonymousView;
      if (paramAnonymousView == null) {
        paramAnonymousViewGroup = LayoutInflater.from(ActivityDealDetail.this).inflate(2130903386, h, false);
      }
      paramAnonymousView = (CharSequence)getItem(paramAnonymousInt);
      TextView localTextView = (TextView)paramAnonymousViewGroup.findViewById(2131689711);
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      localTextView.setText(paramAnonymousView);
      if (TextUtils.isEmpty(paramAnonymousView)) {}
      for (paramAnonymousInt = 8;; paramAnonymousInt = 0)
      {
        paramAnonymousViewGroup.setVisibility(paramAnonymousInt);
        return paramAnonymousViewGroup;
      }
    }
  };
  k.b<ax.a> l = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ax.a paramAnonymousa)
    {
      if ((ActivityDealDetail.a(ActivityDealDetail.this) != null) && (!paramAnonymousa.b().contains(ActivityDealDetail.a(ActivityDealDetail.this)))) {
        paramAnonymousa.b().add(0, ActivityDealDetail.a(ActivityDealDetail.this));
      }
      ActivityDealDetail.a(ActivityDealDetail.this, paramAnonymousa.b());
      ActivityDealDetail.a(ActivityDealDetail.this, paramAnonymousa.a());
      ActivityDealDetail.e(ActivityDealDetail.this);
    }
    
    public boolean a()
    {
      return true;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      dget2131689825a = ErrorType.getTypeFromException(paramAnonymousYelpException).buildAdapter(ActivityDealDetail.this);
      dget2131689825b = null;
    }
  };
  k.b<List<YelpBusinessReview>> m = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, List<YelpBusinessReview> paramAnonymousList)
    {
      ActivityDealDetail.b(ActivityDealDetail.this, new ArrayList(paramAnonymousList));
      ActivityDealDetail.f(ActivityDealDetail.this);
    }
    
    public boolean a()
    {
      return true;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      dget2131689824a = ErrorType.getTypeFromException(paramAnonymousYelpException).buildAdapter(ActivityDealDetail.this);
      dget2131689824b = null;
    }
  };
  AdapterView.OnItemClickListener n = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousView = (YelpBusinessReview)paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
      if (ActivityDealDetail.a(ActivityDealDetail.this) == null) {}
      for (paramAnonymousAdapterView = null;; paramAnonymousAdapterView = ActivityDealDetail.a(ActivityDealDetail.this).aw())
      {
        paramAnonymousAdapterView = ActivityReviewPager.a(ActivityDealDetail.this, paramAnonymousView, ActivityDealDetail.b(ActivityDealDetail.this).u(), paramAnonymousView.Q(), paramAnonymousAdapterView);
        startActivity(paramAnonymousAdapterView);
        return;
      }
    }
  };
  AdapterView.OnItemClickListener o = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = (YelpBusiness)paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
      if (paramAnonymousAdapterView != null)
      {
        paramAnonymousAdapterView = ActivityBusinessPage.b(ActivityDealDetail.this, paramAnonymousAdapterView.aD());
        startActivity(paramAnonymousAdapterView);
      }
    }
  };
  private RadioGroup v;
  private Button w;
  private List<YelpBusiness> x;
  private List<YelpBusinessReview> y;
  private YelpDeal z;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityDealDetail.class);
    paramContext.putExtra(a, paramString);
    paramContext.putExtra("referring_business", paramYelpBusiness);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    return a(paramContext, null, paramString);
  }
  
  private void a(int paramInt)
  {
    F.setVisibility(8);
    h.removeFooterView(i);
    i.removeAllViews();
    if (G.get(paramInt)).a.isEmpty())
    {
      i.addView(F);
      h.addFooterView(i);
      F.setVisibility(0);
    }
    for (;;)
    {
      h.setAdapter(G.get(paramInt)).a);
      return;
      if (G.get(paramInt)).b != null)
      {
        View localView = G.get(paramInt)).b;
        i.addView(localView);
      }
      h.setOnItemClickListener(G.get(paramInt)).c);
      h.setItemsCanFocus(true);
      h.addFooterView(i);
    }
  }
  
  private void a(Intent paramIntent)
  {
    Object localObject = paramIntent.getData();
    if ((localObject != null) && (((Uri)localObject).getPath() != null) && (((Uri)localObject).getPath().startsWith("/deal/")) && (("yelp".equals(((Uri)localObject).getScheme())) || ("yelp5.3".equals(((Uri)localObject).getScheme()))))
    {
      AppData.b().k().a(new com.yelp.android.analytics.n((Uri)localObject));
      localObject = ((Uri)localObject).getLastPathSegment();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        paramIntent.putExtra(a, (String)localObject);
        paramIntent.putExtra("referring_business", (YelpBusiness)null);
      }
    }
    C = ((MapSpan)paramIntent.getParcelableExtra(t));
    z = ((YelpDeal)paramIntent.getParcelableExtra(p));
    A = ((YelpBusiness)paramIntent.getParcelableExtra("referring_business"));
    if (z == null)
    {
      if ((e != null) && (e.u()))
      {
        e.a(this);
        return;
      }
      B = paramIntent.getStringExtra(a);
      if (!TextUtils.isEmpty(B))
      {
        a(B);
        return;
      }
      finish();
      return;
    }
    B = z.x();
    d();
  }
  
  private void a(String paramString)
  {
    e = new ba(paramString, this);
    enableLoading(e);
    e.f(new Void[0]);
  }
  
  private void j()
  {
    c = new bb(z.x(), m);
    c.f(new Void[0]);
  }
  
  private void k()
  {
    if (isFinishing()) {}
    do
    {
      return;
      f.a(x);
      G.get(2131689825)).b = D;
      c();
    } while (v.getCheckedRadioButtonId() != 2131689825);
    a(2131689825);
  }
  
  private void l()
  {
    g.a(y);
  }
  
  public void a()
  {
    D.setClickable(false);
    D.setInteractive(false);
    c();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpDeal paramYelpDeal)
  {
    z = paramYelpDeal;
    d();
    disableLoading();
  }
  
  public a b()
  {
    return (a)super.getLastCustomNonConfigurationInstance();
  }
  
  public void c()
  {
    if (!m()) {}
    do
    {
      return;
      if (!x.isEmpty())
      {
        D.g();
        D.a(x, new j(this, 0));
      }
    } while (C == null);
    D.setMapSpan(C);
  }
  
  public void d()
  {
    w.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        startActivity(ChooseDealOption.a(ActivityDealDetail.this, ActivityDealDetail.a(ActivityDealDetail.this), ActivityDealDetail.b(ActivityDealDetail.this)));
      }
    });
    Object localObject1 = z.i();
    Object localObject2 = getString(2131165782, new Object[] { Integer.valueOf(d) });
    ((WebImageView)findViewById(2131689816)).setImageUrl(z.v());
    ((TextView)findViewById(2131689817)).setText(a);
    ((TextView)findViewById(2131689711)).setText(z.a(this));
    Object localObject3 = (TextView)findViewById(2131689818).findViewById(2131690634);
    ((TextView)localObject3).setText(b);
    ((TextView)findViewById(2131689818).findViewById(2131690635)).setText(getString(2131166436));
    ((TextView)localObject3).measure(0, 0);
    localObject3 = new RelativeLayout.LayoutParams(((TextView)localObject3).getMeasuredWidth() + u * 2, ((TextView)localObject3).getMeasuredHeight());
    ((RelativeLayout.LayoutParams)localObject3).addRule(6, 2131690634);
    ((RelativeLayout.LayoutParams)localObject3).addRule(14);
    Drawable localDrawable = getResources().getDrawable(2130838859);
    ImageView localImageView = new ImageView(this);
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    localImageView.setLayoutParams((ViewGroup.LayoutParams)localObject3);
    localImageView.setImageDrawable(localDrawable);
    ((RelativeLayout)findViewById(2131689818)).addView(localImageView);
    ((TextView)findViewById(2131689819).findViewById(2131690634)).setText((CharSequence)localObject2);
    ((TextView)findViewById(2131689819).findViewById(2131690635)).setText(getString(2131165781));
    ((TextView)findViewById(2131689820).findViewById(2131690634)).setText(c);
    ((TextView)findViewById(2131689820).findViewById(2131690635)).setText(getString(2131166495));
    if (z.d() > -1)
    {
      ((TextView)findViewById(2131689821).findViewById(2131690634)).setText(String.valueOf(z.d()));
      ((TextView)findViewById(2131689821).findViewById(2131690635)).setText(z.e());
      localObject1 = z.z();
      k.a((List)localObject1);
      if (k.isEmpty()) {
        k.a(Collections.singletonList(""));
      }
      G.get(2131689823)).a = k;
      localObject1 = (LinearLayout)LayoutInflater.from(this).inflate(2130903470, h, false);
      ((LinearLayout)localObject1).setLayoutParams(new AbsListView.LayoutParams(-1, -2));
      localObject2 = (TextView)((LinearLayout)localObject1).findViewById(2131690796);
      ((TextView)localObject2).setText(Html.fromHtml(z.t()));
      ((TextView)localObject2).setMovementMethod(LinkMovementMethod.getInstance());
      G.get(2131689823)).b = ((View)localObject1);
      e();
      h();
      findViewById(2131689812).setVisibility(0);
      if (z.j())
      {
        findViewById(2131689814).setVisibility(8);
        localObject1 = new RelativeLayout.LayoutParams(-1, -2);
        w.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      }
      v.setEnabled(true);
      localObject1 = v;
      if (getIntent().getExtras() != null) {
        break label698;
      }
    }
    label698:
    for (int i1 = 2131689823;; i1 = getIntent().getExtras().getInt(s, 2131689823))
    {
      ((RadioGroup)localObject1).check(i1);
      return;
      findViewById(2131689821).setVisibility(8);
      break;
    }
  }
  
  void e()
  {
    x = getIntent().getParcelableArrayListExtra(q);
    if (x == null)
    {
      x = Collections.emptyList();
      if ((d != null) && (d.u())) {
        d.a(l);
      }
    }
    for (;;)
    {
      y = getIntent().getParcelableArrayListExtra(r);
      if (y != null) {
        break label132;
      }
      y = Collections.emptyList();
      if ((c == null) || (!c.u())) {
        break;
      }
      c.a(m);
      return;
      i();
      continue;
      k();
    }
    j();
    return;
    label132:
    l();
  }
  
  public a f()
  {
    a locala = new a(null);
    b = d;
    a = c;
    c = e;
    return locala;
  }
  
  void g()
  {
    if (b != null) {
      b.cancel();
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Deal;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return Collections.singletonMap("id", B);
  }
  
  void h()
  {
    if ((z != null) && (!z.j()))
    {
      g();
      b = new an(z.f() - SystemClock.elapsedRealtime(), (TextView)findViewById(2131689814));
      b.a(new an.a()
      {
        public void a()
        {
          ActivityDealDetail.c(ActivityDealDetail.this).setEnabled(false);
        }
      });
      b.start();
    }
  }
  
  public void i()
  {
    d = new ax(z.x(), 0, 3, l);
    d.f(new Void[0]);
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if ((paramRadioGroup == v) && (paramInt > 0)) {
      a(paramInt);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903088);
    setTitle(2131166847);
    E = 3;
    x = Collections.emptyList();
    y = Collections.emptyList();
    j = ((ViewGroup)LayoutInflater.from(this).inflate(2130903089, h, false));
    i = new FrameLayout(this);
    i.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    D = new YelpMap(this, AppData.b().r().c());
    D.setLayoutParams(new FrameLayout.LayoutParams(-1, com.yelp.android.appdata.n.a(300)));
    D.setPadding(0, com.yelp.android.appdata.n.n, 0, 0);
    D.setBackgroundResource(2131624075);
    D.a(paramBundle, new b(this));
    F = new PanelLoading(this);
    F.a();
    F.setLayoutParams(new AbsListView.LayoutParams(F.getLayoutParams()));
    h = ((ListView)findViewById(2131689815));
    h.addHeaderView(j, null, false);
    h.addFooterView(i, null, false);
    h.setAdapter(k);
    h.setDividerHeight(0);
    h.setItemsCanFocus(true);
    f = new BusinessAdapter(this);
    f.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.ADDRESS });
    v = ((RadioGroup)findViewById(2131689822));
    v.clearCheck();
    v.setEnabled(false);
    v.setOnCheckedChangeListener(this);
    G = new SparseArray();
    G.put(2131689823, new b(k, null, null));
    G.put(2131689824, new b(g, null, n));
    G.put(2131689825, new b(f, null, o));
    w = ((Button)findViewById(2131689813));
    paramBundle = b();
    if (paramBundle != null)
    {
      c = a;
      d = b;
      e = c;
    }
    a(getIntent());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramApiRequest instanceof ba))
    {
      E -= 1;
      if (E > 0) {
        a(a);
      }
    }
    else
    {
      return;
    }
    disableLoading();
    finish();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    a(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
    g();
  }
  
  public void onResume()
  {
    super.onResume();
    h();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    getIntent().putExtra(p, z);
    getIntent().putParcelableArrayListExtra(r, new ArrayList(y));
    getIntent().putParcelableArrayListExtra(q, new ArrayList(x));
    getIntent().putExtra(s, v.getCheckedRadioButtonId());
    getIntent().putExtra(t, C);
  }
  
  private static class a
  {
    bb a;
    ax b;
    ba c;
  }
  
  private class b
  {
    BaseAdapter a;
    View b;
    AdapterView.OnItemClickListener c;
    
    public b(BaseAdapter paramBaseAdapter, View paramView, AdapterView.OnItemClickListener paramOnItemClickListener)
    {
      a = paramBaseAdapter;
      b = paramView;
      c = paramOnItemClickListener;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealDetail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */