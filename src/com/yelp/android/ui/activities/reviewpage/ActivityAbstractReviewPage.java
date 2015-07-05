package com.yelp.android.ui.activities.reviewpage;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewStub;
import android.view.inputmethod.InputMethodManager;
import android.widget.Adapter;
import android.widget.AdapterView.AdapterContextMenuInfo;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ex;
import com.yelp.android.appdata.webrequests.ey;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.fc;
import com.yelp.android.appdata.webrequests.fd;
import com.yelp.android.appdata.z;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bf;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bv;
import com.yelp.android.ui.widgets.EditTextAndClearButton;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
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
  protected bs a;
  protected TreeMap<Locale, bi> b;
  protected ApiRequest<?, ?, ?> c;
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
  private ak q;
  private final BroadcastReceiver r = new a(this);
  private final BroadcastReceiver s = new b(this);
  
  private void a(View paramView, String paramString)
  {
    paramView = (EditTextAndClearButton)paramView.findViewById(2131493226);
    paramView.setHint(2131166473);
    paramView.setOnEditorActionListener(new c(this, (InputMethodManager)getSystemService("input_method")));
  }
  
  private Intent b(YelpBusinessReview paramYelpBusinessReview)
  {
    ArrayList localArrayList = new ArrayList(a.getCount());
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Adapter localAdapter = (Adapter)localIterator.next();
      if ((localAdapter instanceof ak)) {
        localArrayList.addAll(((ak)localAdapter).a());
      } else if ((localAdapter instanceof bi)) {
        localArrayList.addAll(((bi)localAdapter).a());
      }
    }
    return a(paramYelpBusinessReview, localArrayList);
  }
  
  private void c(Bundle paramBundle)
  {
    f = ((LinkedHashSet)paramBundle.getSerializable("NotLoadedLanguages"));
    g = ((LinkedHashSet)paramBundle.getSerializable("AllLanguages"));
    i = ((ArrayList)paramBundle.getSerializable("LocaleList"));
    h = LocaleCount.listToMap(paramBundle.getParcelableArrayList("ReviewCounts"));
    a(paramBundle);
    b(d, i);
    Object localObject = new LinkedList();
    Iterator localIterator = i.iterator();
    while (localIterator.hasNext())
    {
      Locale localLocale = (Locale)localIterator.next();
      bi localbi = (bi)b.get(localLocale);
      ArrayList localArrayList = paramBundle.getParcelableArrayList(String.format("ReviewList.%s", new Object[] { localLocale }));
      if ((localArrayList != null) && (!localArrayList.isEmpty()))
      {
        localbi.a(localArrayList);
        ((LinkedList)localObject).add(localLocale);
      }
    }
    if (!((LinkedList)localObject).isEmpty()) {
      ((LinkedList)localObject).removeLast();
    }
    f.removeAll((Collection)localObject);
    localObject = q();
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
      o.b(2131166018);
    }
    q().setEmptyView(o);
  }
  
  private ApiRequest<?, ?, ?> o()
  {
    int i1 = Math.min(a.getCount() / 10 * 10 + 10, 50);
    return new fc(e.getId(), j, q.getCount(), i1, new d(this));
  }
  
  private void p()
  {
    disableLoading();
    if (p == null)
    {
      p = ((ViewStub)findViewById(2131493311));
      p.setLayoutResource(2130903407);
      p.inflate();
    }
    View localView = q().getEmptyView();
    if ((localView != null) && (localView != p)) {
      localView.setVisibility(8);
    }
    q().setEmptyView(p);
    if (k == null) {
      k = findViewById(2131494010);
    }
    a(k, null);
  }
  
  private void u()
  {
    a.clear();
    h.clear();
    f.clear();
    f.addAll(g);
    if (TextUtils.isEmpty(j)) {
      setTitle(e.getDisplayName());
    }
    for (;;)
    {
      ActivityCompat.invalidateOptionsMenu(this);
      n();
      s();
      j();
      return;
      setTitle(2131166472);
    }
  }
  
  private void v()
  {
    j = null;
    n = 0;
    u();
  }
  
  protected abstract Intent a(YelpBusinessReview paramYelpBusinessReview, ArrayList<YelpBusinessReview> paramArrayList);
  
  protected abstract void a(Bundle paramBundle);
  
  protected abstract void a(SparseArray<ApiRequest<?, ?, ?>> paramSparseArray);
  
  protected void a(ex paramex)
  {
    b(d, null);
  }
  
  protected abstract void a(ey paramey, YelpException paramYelpException);
  
  protected void a(ez paramez)
  {
    b(c, d);
    if (e.getReviewCount() < 20) {
      q().setSelection(1);
    }
  }
  
  public void a(fd paramfd)
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
      t();
    }
    if (localList.isEmpty()) {
      p();
    }
    a.a(2131492918).a(StringUtils.a(this, 2131623975, n, new String[] { j }));
    paramfd = q();
    if (a.getCount() > 100) {}
    for (;;)
    {
      paramfd.setFastScrollEnabled(bool);
      if ((l != null) && (m == null)) {
        m = ((EditTextAndClearButton)findViewById(2131493226));
      }
      return;
      bool = false;
    }
  }
  
  protected abstract void a(YelpBusinessReview paramYelpBusinessReview);
  
  protected void a(bs parambs)
  {
    q().setAdapter(parambs);
  }
  
  protected void a(String paramString)
  {
    if (l != null) {
      return;
    }
    l = getLayoutInflater().inflate(2130903411, q(), false);
    q().addHeaderView(l, "HEADER", false);
    a(l, paramString);
  }
  
  protected void a(List<YelpBusinessReview> paramList, Map<Locale, Integer> paramMap, Locale paramLocale)
  {
    boolean bool = true;
    bi localbi = (bi)b.get(paramLocale);
    Object localObject;
    int i2;
    if (!paramList.isEmpty())
    {
      if (localbi.b())
      {
        localObject = paramList.iterator();
        int i1 = 0;
        i2 = i1;
        if (((Iterator)localObject).hasNext())
        {
          YelpBusinessReview localYelpBusinessReview = (YelpBusinessReview)((Iterator)localObject).next();
          if (localYelpBusinessReview.getTranslatedText() != null) {
            localYelpBusinessReview.setDisplayTranslatedText(true);
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
      localbi.a(paramList);
      localbi.notifyDataSetChanged();
    }
    for (;;)
    {
      if (i2 != 0) {
        localbi.a(getString(2131166764));
      }
      localObject = (Integer)paramMap.get(paramLocale);
      paramMap = (Map<Locale, Integer>)localObject;
      if (localObject == null) {
        paramMap = Integer.valueOf(0);
      }
      localObject = q();
      if (a.getCount() > 100) {}
      for (;;)
      {
        ((ScrollToLoadListView)localObject).setFastScrollEnabled(bool);
        if (localbi.getCount() >= Integer.valueOf(paramMap.intValue()).intValue()) {
          f.remove(paramLocale);
        }
        if ((paramList.isEmpty()) && (!f.isEmpty())) {
          j();
        }
        if (f.isEmpty()) {
          q().f();
        }
        if ((l != null) && (m == null)) {
          m = ((EditTextAndClearButton)l.findViewById(2131493226));
        }
        return;
        bool = false;
      }
      i2 = 0;
    }
  }
  
  protected abstract void a(Locale paramLocale, Collection<Locale> paramCollection);
  
  protected abstract void b(Bundle paramBundle);
  
  protected void b(Locale paramLocale, Collection<Locale> paramCollection)
  {
    f.clear();
    f.add(paramLocale);
    b.put(paramLocale, new bi());
    q.clear();
    q.a(true);
    a.a(2131492918, " ", q);
    a(paramLocale, paramCollection);
    a(a);
    g = new LinkedHashSet();
    g.addAll(f);
  }
  
  protected abstract ApiRequest<?, ?, ?> c();
  
  protected void d()
  {
    super.d();
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
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    return g.b(e.getId());
  }
  
  public String getRequestIdForIri(com.yelp.android.analytics.iris.b paramb)
  {
    return null;
  }
  
  protected void h()
  {
    if ((c instanceof fc)) {
      ((fc)c).setCallback(new d(this));
    }
  }
  
  protected void j()
  {
    if ((c != null) && (c.isFetching())) {
      return;
    }
    if (TextUtils.isEmpty(j)) {}
    for (ApiRequest localApiRequest = c();; localApiRequest = o())
    {
      c = localApiRequest;
      c.execute(new Object[0]);
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
    v();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ScrollToLoadListView localScrollToLoadListView = q();
    e = ((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
    d = AppData.b().g().h();
    i = new ArrayList();
    i.add(d);
    f = new LinkedHashSet();
    f.add(d);
    f();
    a = new bs();
    b = new TreeMap(new z());
    q = new ak();
    SparseArray localSparseArray = (SparseArray)getLastCustomNonConfigurationInstance();
    if ((localSparseArray != null) && (localSparseArray.get(0) != null))
    {
      a(localSparseArray);
      h();
    }
    if (paramBundle != null) {
      c(paramBundle);
    }
    for (;;)
    {
      localScrollToLoadListView.setOnItemClickListener(new e(this, null));
      localScrollToLoadListView.setItemsCanFocus(true);
      setTitle(e.getDisplayName());
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
    int i1 = position - q().getHeaderViewsCount();
    if (i1 >= 0)
    {
      paramView = a.getItem(i1);
      if ((paramView instanceof YelpBusinessReview))
      {
        paramView = (YelpBusinessReview)paramView;
        paramContextMenu.setHeaderTitle(e.getDisplayName());
        bf.a(this, paramContextMenu, paramView.getUserId(), paramView.getUserName());
        bf.a(this, paramContextMenu, paramView).setIntent(b(paramView));
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755047, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    if (c != null) {
      c.setCallback(null);
    }
    super.onDestroy();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramApiRequest instanceof ey))
    {
      paramApiRequest = (ey)paramApiRequest;
      a(paramApiRequest, paramYelpException);
      if (b.isEmpty()) {
        break label73;
      }
      ((bi)b.get(a)).a(paramYelpException);
      if (f.isEmpty()) {
        break label66;
      }
      j();
    }
    for (;;)
    {
      YelpLog.error(this, paramYelpException);
      return;
      label66:
      t();
      continue;
      label73:
      t();
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    paramIntent = b.values().iterator();
    while (paramIntent.hasNext()) {
      ((bi)paramIntent.next()).clear();
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
      ArrayList localArrayList = new ArrayList(((bi)b.get(localLocale)).a());
      paramBundle.putParcelableArrayList(String.format("ReviewList.%s", new Object[] { localLocale }), localArrayList);
    }
    paramBundle.putParcelableArrayList("ReviewCounts", LocaleCount.mapToList(h));
    paramBundle.putSerializable("NotLoadedLanguages", f);
    paramBundle.putSerializable("AllLanguages", g);
    paramBundle.putInt("search_result_count", n);
    b(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityAbstractReviewPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */