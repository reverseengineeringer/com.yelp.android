package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocaleSettings.b;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dx.a;
import com.yelp.android.appdata.webrequests.dy;
import com.yelp.android.appdata.webrequests.dy.a;
import com.yelp.android.appdata.webrequests.ea;
import com.yelp.android.appdata.webrequests.ea.a;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ab;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.ui.widgets.EditTextAndClearButton;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

public abstract class ActivityAbstractReviewPage
  extends YelpListActivity
{
  protected aj a;
  protected TreeMap<Locale, e> b;
  protected ApiRequest<Void, ?, ?> c;
  protected Locale d;
  protected YelpBusiness e;
  protected LinkedHashSet<Locale> f;
  protected LinkedHashSet<Locale> g;
  protected Map<Locale, Integer> h;
  protected ArrayList<Locale> i;
  protected String j;
  private View k;
  private View l;
  private EditTextAndClearButton m;
  private int n;
  private PanelLoading o;
  private ViewStub p;
  private c q;
  private final BroadcastReceiver r = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = (YelpBusinessReview)ObjectDirtyEvent.a(paramAnonymousIntent);
      paramAnonymousIntent = b.values().iterator();
      while (paramAnonymousIntent.hasNext()) {
        ((e)paramAnonymousIntent.next()).a(paramAnonymousContext);
      }
      a(paramAnonymousContext);
    }
  };
  private final BroadcastReceiver s = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = ObjectDirtyEvent.c(paramAnonymousIntent).iterator();
      while (paramAnonymousContext.hasNext())
      {
        paramAnonymousIntent = (YelpBusinessReview)paramAnonymousContext.next();
        Iterator localIterator = b.values().iterator();
        while (localIterator.hasNext()) {
          ((e)localIterator.next()).a(paramAnonymousIntent);
        }
        a(paramAnonymousIntent);
      }
    }
  };
  
  private void a(View paramView)
  {
    paramView = (EditTextAndClearButton)paramView.findViewById(2131690889);
    paramView.setHint(2131166476);
    paramView.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if ((paramAnonymousInt != 3) || (TextUtils.isEmpty(paramAnonymousTextView.getText()))) {
          return false;
        }
        j = paramAnonymousTextView.getText().toString();
        ActivityAbstractReviewPage.a(ActivityAbstractReviewPage.this);
        a.hideSoftInputFromWindow(paramAnonymousTextView.getWindowToken(), 0);
        return true;
      }
    });
  }
  
  private Intent b(YelpBusinessReview paramYelpBusinessReview)
  {
    ArrayList localArrayList = new ArrayList(a.getCount());
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Adapter localAdapter = (Adapter)localIterator.next();
      if ((localAdapter instanceof c)) {
        localArrayList.addAll(((c)localAdapter).a());
      } else if ((localAdapter instanceof e)) {
        localArrayList.addAll(((e)localAdapter).a());
      }
    }
    return a(paramYelpBusinessReview, localArrayList);
  }
  
  private void c(Bundle paramBundle)
  {
    f = ((LinkedHashSet)paramBundle.getSerializable("NotLoadedLanguages"));
    g = ((LinkedHashSet)paramBundle.getSerializable("AllLanguages"));
    i = ((ArrayList)paramBundle.getSerializable("LocaleList"));
    h = LocaleCount.a(paramBundle.getParcelableArrayList("ReviewCounts"));
    a(paramBundle);
    b(d, i);
    Object localObject = new LinkedList();
    Iterator localIterator = i.iterator();
    while (localIterator.hasNext())
    {
      Locale localLocale = (Locale)localIterator.next();
      e locale = (e)b.get(localLocale);
      ArrayList localArrayList = paramBundle.getParcelableArrayList(String.format("ReviewList.%s", new Object[] { localLocale }));
      if ((localArrayList != null) && (!localArrayList.isEmpty()))
      {
        locale.a(localArrayList);
        ((LinkedList)localObject).add(localLocale);
      }
    }
    if (!((LinkedList)localObject).isEmpty()) {
      ((LinkedList)localObject).removeLast();
    }
    f.removeAll((Collection)localObject);
    localObject = r();
    if (a.getCount() > 100) {}
    for (boolean bool = true;; bool = false)
    {
      ((ScrollToLoadListView)localObject).setFastScrollEnabled(bool);
      j = paramBundle.getString("search_term");
      n = paramBundle.getInt("search_result_count");
      return;
    }
  }
  
  private void n()
  {
    if (o == null)
    {
      o = createLoadingPanel();
      o.a(2131166077);
    }
    r().setEmptyView(o);
  }
  
  private ApiRequest<Void, ?, ?> o()
  {
    int i1 = Math.min(a.getCount() / 10 * 10 + 10, 50);
    return new ea(e.aD(), j, q.getCount(), i1, new a(this));
  }
  
  private void p()
  {
    disableLoading();
    if (p == null)
    {
      p = ((ViewStub)findViewById(2131689967));
      p.setLayoutResource(2130903518);
      p.inflate();
    }
    View localView = r().getEmptyView();
    if ((localView != null) && (localView != p)) {
      localView.setVisibility(8);
    }
    r().setEmptyView(p);
    if (k == null)
    {
      k = findViewById(2131690881);
      a(k);
    }
  }
  
  private void q()
  {
    a.clear();
    h.clear();
    f.clear();
    f.addAll(g);
    if (TextUtils.isEmpty(j)) {
      setTitle(e.z());
    }
    for (;;)
    {
      android.support.v4.app.a.a(this);
      n();
      t();
      j();
      return;
      setTitle(2131166475);
    }
  }
  
  private void u()
  {
    j = null;
    n = 0;
    q();
  }
  
  protected abstract Intent a(YelpBusinessReview paramYelpBusinessReview, ArrayList<YelpBusinessReview> paramArrayList);
  
  protected abstract void a(Bundle paramBundle);
  
  protected abstract void a(SparseArray<ApiRequest<Void, ?, ?>> paramSparseArray);
  
  protected void a(dx.a parama)
  {
    b(d, null);
  }
  
  protected void a(dy.a parama)
  {
    b(c, d);
    if (e.N() < 20) {
      r().setSelection(1);
    }
  }
  
  protected abstract void a(dy paramdy, YelpException paramYelpException);
  
  public void a(ea.a parama)
  {
    boolean bool = true;
    List localList = a;
    n = b;
    if (!localList.isEmpty())
    {
      q.a(localList);
      q.notifyDataSetChanged();
    }
    if (q.getCount() == n) {
      a();
    }
    if (localList.isEmpty())
    {
      p();
      if (!TextUtils.isEmpty(j))
      {
        m.getEditText().setText(j);
        if (k != null) {
          ((EditTextAndClearButton)k.findViewById(2131690889)).getEditText().setText(j);
        }
      }
      return;
    }
    a.a(2131689534).a(StringUtils.a(this, 2131230762, n, new String[] { j }));
    parama = r();
    if (a.getCount() > 100) {}
    for (;;)
    {
      parama.setFastScrollEnabled(bool);
      if ((l == null) || (m != null)) {
        break;
      }
      m = ((EditTextAndClearButton)findViewById(2131690889));
      break;
      bool = false;
    }
  }
  
  protected abstract void a(YelpBusinessReview paramYelpBusinessReview);
  
  protected void a(aj paramaj)
  {
    r().setAdapter(paramaj);
  }
  
  protected void a(String paramString)
  {
    if (l != null) {
      return;
    }
    l = getLayoutInflater().inflate(2130903524, r(), false);
    r().addHeaderView(l, "HEADER", false);
    a(l);
  }
  
  protected void a(List<YelpBusinessReview> paramList, Map<Locale, Integer> paramMap, Locale paramLocale)
  {
    boolean bool = true;
    e locale = (e)b.get(paramLocale);
    Object localObject;
    int i2;
    if (!paramList.isEmpty())
    {
      if (locale.b())
      {
        localObject = paramList.iterator();
        int i1 = 0;
        i2 = i1;
        if (((Iterator)localObject).hasNext())
        {
          YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)((Iterator)localObject).next();
          if (localYelpBusinessReview.G() != null) {
            localYelpBusinessReview.a(true);
          }
          for (;;)
          {
            break;
            i1 = 1;
          }
        }
      }
      else
      {
        i2 = 0;
      }
      locale.a(paramList);
      locale.notifyDataSetChanged();
    }
    for (;;)
    {
      if (i2 != 0) {
        locale.a(getString(2131166744));
      }
      localObject = (Integer)paramMap.get(paramLocale);
      paramMap = (Map<Locale, Integer>)localObject;
      if (localObject == null) {
        paramMap = Integer.valueOf(0);
      }
      localObject = r();
      if (a.getCount() > 100) {}
      for (;;)
      {
        ((ScrollToLoadListView)localObject).setFastScrollEnabled(bool);
        if (locale.getCount() >= Integer.valueOf(paramMap.intValue()).intValue()) {
          f.remove(paramLocale);
        }
        if ((paramList.isEmpty()) && (!f.isEmpty())) {
          j();
        }
        if (f.isEmpty()) {
          r().f();
        }
        if ((l != null) && (m == null)) {
          m = ((EditTextAndClearButton)l.findViewById(2131690889));
        }
        return;
        bool = false;
      }
      i2 = 0;
    }
  }
  
  protected abstract void a(Locale paramLocale, Collection<Locale> paramCollection);
  
  protected abstract ApiRequest<Void, ?, ?> b();
  
  protected abstract void b(Bundle paramBundle);
  
  protected void b(Locale paramLocale, Collection<Locale> paramCollection)
  {
    f.clear();
    f.add(paramLocale);
    b.put(paramLocale, new e());
    q.clear();
    q.a(true);
    a.a(2131689534, " ", q);
    a(paramLocale, paramCollection);
    a(a);
    g = new LinkedHashSet();
    g.addAll(f);
  }
  
  protected void c()
  {
    super.c();
    j();
  }
  
  protected abstract void f();
  
  @Deprecated
  public SparseArray<ApiRequest<?, ?, ?>> g()
  {
    SparseArray localSparseArray = new SparseArray();
    localSparseArray.append(0, c);
    return localSparseArray;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessReviews;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return g.b(e.aD());
  }
  
  public String getRequestIdForIri(com.yelp.android.analytics.iris.a parama)
  {
    return null;
  }
  
  protected void i()
  {
    if ((c instanceof ea)) {
      ((ea)c).a(new a(this));
    }
  }
  
  protected void j()
  {
    if ((c != null) && (c.u())) {
      return;
    }
    if (TextUtils.isEmpty(j)) {}
    for (ApiRequest localApiRequest = b();; localApiRequest = o())
    {
      c = localApiRequest;
      c.f(new Void[0]);
      return;
    }
  }
  
  protected boolean k()
  {
    return !TextUtils.isEmpty(j);
  }
  
  protected String l()
  {
    return j;
  }
  
  protected int m()
  {
    return n;
  }
  
  public void onBackPressed()
  {
    if (TextUtils.isEmpty(j))
    {
      super.onBackPressed();
      return;
    }
    u();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ScrollToLoadListView localScrollToLoadListView = r();
    e = ((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
    d = AppData.b().g().h();
    i = new ArrayList();
    i.add(d);
    f = new LinkedHashSet();
    f.add(d);
    f();
    a = new aj();
    b = new TreeMap(new LocaleSettings.b());
    q = new c();
    SparseArray localSparseArray = (SparseArray)getLastCustomNonConfigurationInstance();
    if ((localSparseArray != null) && (localSparseArray.get(0) != null))
    {
      a(localSparseArray);
      i();
    }
    if (paramBundle != null) {
      c(paramBundle);
    }
    for (;;)
    {
      localScrollToLoadListView.setOnItemClickListener(new b(null));
      localScrollToLoadListView.setItemsCanFocus(true);
      setTitle(e.z());
      registerForContextMenu(localScrollToLoadListView);
      registerDirtyEventReceiver("com.yelp.android.review.update", r);
      registerDirtyEventReceiver("com.yelp.android.review.translate", s);
      return;
      n();
      j();
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    int i1 = position - r().getHeaderViewsCount();
    if (i1 >= 0)
    {
      paramView = a.getItem(i1);
      if ((paramView instanceof YelpBusinessReview))
      {
        paramView = (YelpBusinessReview)paramView;
        paramContextMenu.setHeaderTitle(e.z());
        ab.a(this, paramContextMenu, paramView.b(), paramView.O());
        ab.a(this, paramContextMenu, paramView).setIntent(b(paramView));
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755051, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    if (c != null) {
      c.a(null);
    }
    super.onDestroy();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramApiRequest instanceof dy))
    {
      paramApiRequest = (dy)paramApiRequest;
      a(paramApiRequest, paramYelpException);
      if (b.isEmpty()) {
        break label73;
      }
      ((e)b.get(a)).a(paramYelpException);
      if (f.isEmpty()) {
        break label66;
      }
      j();
    }
    for (;;)
    {
      YelpLog.remoteError(this, paramYelpException);
      return;
      label66:
      a();
      continue;
      label73:
      a();
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    paramIntent = b.values().iterator();
    while (paramIntent.hasNext()) {
      ((e)paramIntent.next()).clear();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putSerializable("LocaleList", i);
    Iterator localIterator = b.keySet().iterator();
    while (localIterator.hasNext())
    {
      Locale localLocale = (Locale)localIterator.next();
      ArrayList localArrayList = new ArrayList(((e)b.get(localLocale)).a());
      paramBundle.putParcelableArrayList(String.format("ReviewList.%s", new Object[] { localLocale }), localArrayList);
    }
    paramBundle.putParcelableArrayList("ReviewCounts", LocaleCount.a(h));
    paramBundle.putSerializable("NotLoadedLanguages", f);
    paramBundle.putSerializable("AllLanguages", g);
    paramBundle.putInt("search_result_count", n);
    b(paramBundle);
  }
  
  private static class a
    implements ApiRequest.b<ea.a>
  {
    private final WeakReference<ActivityAbstractReviewPage> a;
    
    public a(ActivityAbstractReviewPage paramActivityAbstractReviewPage)
    {
      a = new WeakReference(paramActivityAbstractReviewPage);
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, ea.a parama)
    {
      paramApiRequest = (ActivityAbstractReviewPage)a.get();
      if (paramApiRequest != null) {
        paramApiRequest.a(parama);
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      ActivityAbstractReviewPage localActivityAbstractReviewPage = (ActivityAbstractReviewPage)a.get();
      if (localActivityAbstractReviewPage != null) {
        localActivityAbstractReviewPage.onError(paramApiRequest, paramYelpException);
      }
    }
  }
  
  private class b
    implements AdapterView.OnItemClickListener
  {
    private b() {}
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      paramAdapterView = paramAdapterView.getAdapter().getItem(paramInt);
      if ((paramAdapterView instanceof YelpBusinessReview)) {
        startActivity(ActivityAbstractReviewPage.a(ActivityAbstractReviewPage.this, (YelpBusinessReview)paramAdapterView));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */