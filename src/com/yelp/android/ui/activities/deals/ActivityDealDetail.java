package com.yelp.android.ui.activities.deals;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.LayoutParams;
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
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bf;
import com.yelp.android.appdata.webrequests.bg;
import com.yelp.android.appdata.webrequests.bj;
import com.yelp.android.appdata.webrequests.bk;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.MapSpan;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.ej;
import com.yelp.android.services.l;
import com.yelp.android.ui.activities.reviewpage.ak;
import com.yelp.android.ui.activities.support.YelpMapActivity;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.k;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cg;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class ActivityDealDetail
  extends YelpMapActivity
  implements RadioGroup.OnCheckedChangeListener, m<YelpDeal>
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
  private SparseArray<i> G;
  cg b;
  bk c;
  bf d;
  bj e;
  BusinessAdapter<YelpBusiness> f;
  ak g = new ak();
  ListView h;
  FrameLayout i;
  ViewGroup j;
  au<CharSequence> k = new c(this);
  j<bg> l = new d(this);
  j<List<YelpBusinessReview>> m = new e(this);
  AdapterView.OnItemClickListener n = new f(this);
  AdapterView.OnItemClickListener o = new g(this);
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
  
  public static Intent a(Context paramContext, YelpDeal paramYelpDeal)
  {
    paramContext = new Intent(paramContext, ActivityDealDetail.class);
    paramContext.putExtra(p, paramYelpDeal);
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
    C = ((MapSpan)paramIntent.getParcelableExtra(t));
    z = ((YelpDeal)paramIntent.getParcelableExtra(p));
    A = ((YelpBusiness)paramIntent.getParcelableExtra("referring_business"));
    if (z == null)
    {
      if ((e != null) && (e.isFetching()))
      {
        e.setCallback(this);
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
    B = z.getId();
    d();
  }
  
  private void a(String paramString)
  {
    e = new bj(paramString, this);
    enableLoading(e);
    e.execute(new Void[0]);
  }
  
  private void j()
  {
    c = new bk(z.getId(), 0, 0, m);
    c.execute(new Void[0]);
  }
  
  private void k()
  {
    if (isFinishing()) {}
    do
    {
      return;
      f.a(x);
      G.get(2131493154)).b = D;
      c();
    } while (v.getCheckedRadioButtonId() != 2131493154);
    a(2131493154);
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
  
  public h b()
  {
    return (h)super.getLastCustomNonConfigurationInstance();
  }
  
  public void c()
  {
    if (!p()) {}
    do
    {
      return;
      if (!x.isEmpty())
      {
        D.f();
        D.a(x, new k(this, 0));
      }
    } while (C == null);
    D.setMapSpan(C);
  }
  
  public void d()
  {
    w.setOnClickListener(new a(this));
    Object localObject1 = z.getDisplayPrices();
    Object localObject2 = getString(2131165705, new Object[] { Integer.valueOf(d) });
    ((WebImageView)findViewById(2131493144)).setImageUrl(z.getImageUrl());
    ((TextView)findViewById(2131493146)).setText(a);
    ((TextView)findViewById(2131493145)).setText(z.getDealTitleWithBizName(this));
    Object localObject3 = (TextView)findViewById(2131493147).findViewById(2131493803);
    ((TextView)localObject3).setText(b);
    ((TextView)findViewById(2131493147).findViewById(2131493804)).setText(getString(2131166411));
    ((TextView)localObject3).measure(0, 0);
    localObject3 = new RelativeLayout.LayoutParams(((TextView)localObject3).getMeasuredWidth() + u * 2, ((TextView)localObject3).getMeasuredHeight());
    ((RelativeLayout.LayoutParams)localObject3).addRule(6, 2131493803);
    ((RelativeLayout.LayoutParams)localObject3).addRule(14);
    Drawable localDrawable = getResources().getDrawable(2130838472);
    ImageView localImageView = new ImageView(this);
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    localImageView.setLayoutParams((ViewGroup.LayoutParams)localObject3);
    localImageView.setImageDrawable(localDrawable);
    ((RelativeLayout)findViewById(2131493147)).addView(localImageView);
    ((TextView)findViewById(2131493148).findViewById(2131493803)).setText((CharSequence)localObject2);
    ((TextView)findViewById(2131493148).findViewById(2131493804)).setText(getString(2131165704));
    ((TextView)findViewById(2131493149).findViewById(2131493803)).setText(c);
    ((TextView)findViewById(2131493149).findViewById(2131493804)).setText(getString(2131166499));
    if (z.getOptionalCount() > -1)
    {
      ((TextView)findViewById(2131493150).findViewById(2131493803)).setText(String.valueOf(z.getOptionalCount()));
      ((TextView)findViewById(2131493150).findViewById(2131493804)).setText(z.getOptionalString());
      localObject1 = z.getDescription();
      k.a((List)localObject1);
      if (k.isEmpty()) {
        k.a(Collections.singletonList(""));
      }
      G.get(2131493152)).a = k;
      localObject1 = (LinearLayout)LayoutInflater.from(this).inflate(2130903371, h, false);
      ((LinearLayout)localObject1).setLayoutParams(new AbsListView.LayoutParams(-1, -2));
      localObject2 = (TextView)((LinearLayout)localObject1).findViewById(2131493954);
      ((TextView)localObject2).setText(Html.fromHtml(z.getTerms()));
      ((TextView)localObject2).setMovementMethod(LinkMovementMethod.getInstance());
      G.get(2131493152)).b = ((View)localObject1);
      e();
      h();
      findViewById(2131493140).setVisibility(0);
      if (z.isStandingDeal())
      {
        findViewById(2131493142).setVisibility(8);
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
    for (int i1 = 2131493152;; i1 = getIntent().getExtras().getInt(s, 2131493152))
    {
      ((RadioGroup)localObject1).check(i1);
      return;
      findViewById(2131493150).setVisibility(8);
      break;
    }
  }
  
  void e()
  {
    x = getIntent().getParcelableArrayListExtra(q);
    if (x == null)
    {
      x = Collections.emptyList();
      if ((d != null) && (d.isFetching())) {
        d.setCallback(l);
      }
    }
    for (;;)
    {
      y = getIntent().getParcelableArrayListExtra(r);
      if (y != null) {
        break label132;
      }
      y = Collections.emptyList();
      if ((c == null) || (!c.isFetching())) {
        break;
      }
      c.setCallback(m);
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
  
  public h f()
  {
    h localh = new h(null);
    b = d;
    a = c;
    c = e;
    return localh;
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
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    return Collections.singletonMap("id", B);
  }
  
  void h()
  {
    if ((z != null) && (!z.isStandingDeal()))
    {
      g();
      b = new cg(z.getSystemClockExpiration() - SystemClock.elapsedRealtime(), (TextView)findViewById(2131493142));
      b.a(new b(this));
      b.start();
    }
  }
  
  public void i()
  {
    d = new bf(z.getId(), 0, 3, l);
    d.execute(new Void[0]);
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
    setContentView(2130903078);
    setTitle(2131166895);
    E = 3;
    x = Collections.emptyList();
    y = Collections.emptyList();
    j = ((ViewGroup)LayoutInflater.from(this).inflate(2130903079, h, false));
    i = new FrameLayout(this);
    i.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    D = new YelpMap(this, AppData.b().n().c());
    D.setLayoutParams(new FrameLayout.LayoutParams(-1, ao.a(300)));
    D.setPadding(0, ao.n, 0, 0);
    D.setBackgroundResource(2131361873);
    D.a(paramBundle, new com.yelp.android.ui.map.b(this));
    F = new PanelLoading(this);
    F.a();
    F.setLayoutParams(new AbsListView.LayoutParams(F.getLayoutParams()));
    h = ((ListView)findViewById(2131493143));
    h.addHeaderView(j, null, false);
    h.addFooterView(i, null, false);
    h.setAdapter(k);
    h.setDividerHeight(0);
    h.setItemsCanFocus(true);
    f = new BusinessAdapter(this);
    f.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.ADDRESS });
    v = ((RadioGroup)findViewById(2131493151));
    v.clearCheck();
    v.setEnabled(false);
    v.setOnCheckedChangeListener(this);
    G = new SparseArray();
    G.put(2131493152, new i(this, k, null, null));
    G.put(2131493153, new i(this, g, null, n));
    G.put(2131493154, new i(this, f, null, o));
    w = ((Button)findViewById(2131493141));
    paramBundle = b();
    if (paramBundle != null)
    {
      c = a;
      d = b;
      e = c;
    }
    a(getIntent());
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    return l.a(this, new com.yelp.android.services.c(z), 2131166563);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755039, paramMenu);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramApiRequest instanceof bj))
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
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494128)
    {
      showDialog(100);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
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
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealDetail
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */