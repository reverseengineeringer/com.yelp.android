package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;
import com.yelp.android.appdata.webrequests.cs;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.nearby.BusinessListComboActivity;
import com.yelp.android.ui.activities.nearby.ComboListFragment;
import com.yelp.android.ui.activities.nearby.ComboMapFragment;
import com.yelp.android.ui.dialogs.bn;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.p;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.bf;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class ActivityBookmarks
  extends BusinessListComboActivity
  implements p
{
  private ListBookmarksRequest.SortType c;
  private BusinessAdapter<YelpBusiness> d;
  private ListBookmarksRequest e;
  private n f;
  private ComboMapFragment g;
  private ComboListFragment h;
  private boolean i;
  private bn j;
  private int k;
  private boolean l;
  private boolean m;
  private cs n;
  private final q o = new l(this);
  private final com.yelp.android.appdata.webrequests.j<cs> p = new m(this);
  
  public static Intent a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, ActivityBookmarks.class);
    ArrayList localArrayList1 = new ArrayList(1);
    ArrayList localArrayList2 = new ArrayList(1);
    localArrayList1.add(paramContext.getString(DISTANCEdescription));
    localArrayList2.add(new ArrayList());
    localIntent.putStringArrayListExtra("titles", localArrayList1);
    localIntent.putExtra("business_list", localArrayList2);
    localIntent.putExtra("start_position", ListBookmarksRequest.SortType.DISTANCE.ordinal());
    return localIntent;
  }
  
  private void a(List<YelpBusiness> paramList)
  {
    r().clear();
    r().addAll(paramList);
    g.a(r(), new com.yelp.android.ui.map.k(this, 0));
    s().a(r(), true);
    m = true;
    if (h != null)
    {
      h.a(getString(c.description));
      h.m().setVisibility(0);
    }
    if (r().isEmpty()) {
      q();
    }
    n();
  }
  
  private void c(YelpBusiness paramYelpBusiness)
  {
    r().remove(paramYelpBusiness);
    k -= 1;
    f.a(c, r(), k);
    g.a(r(), new com.yelp.android.ui.map.k(this, 0));
    h.l_();
    s().a(r(), true);
    s().notifyDataSetChanged();
    if (r().isEmpty()) {
      q();
    }
  }
  
  private void o()
  {
    registerReceiver(new i(this), ObjectDirtyEvent.a("com.yelp.android.bookmarks.remove"));
  }
  
  private void p()
  {
    clearError();
    if ((e != null) && (!e.isCompleted())) {
      e.cancel(true);
    }
    Pair localPair = f.a(c);
    if ((localPair == null) || (((List)first).size() < ((Integer)second).intValue()))
    {
      if (localPair == null) {}
      for (int i1 = 0;; i1 = ((List)first).size())
      {
        e = new ListBookmarksRequest(p, c, i1);
        e.executeWithLocation(new Void[0]);
        if (i1 == 0) {
          m();
        }
        return;
      }
    }
    a((List)first);
  }
  
  private void q()
  {
    g.b().setVisibility(4);
    h.m().setVisibility(4);
    populateError(ErrorType.NO_BOOKMARKS);
  }
  
  private List<YelpBusiness> r()
  {
    return (List)a.get(0);
  }
  
  private BusinessAdapter<YelpBusiness> s()
  {
    return (BusinessAdapter)a(0);
  }
  
  protected au<YelpBusiness> a(int paramInt)
  {
    if (d != null) {
      return d;
    }
    d = ((BusinessAdapter)super.a(0));
    d.notifyDataSetChanged();
    return d;
  }
  
  public void a(ComboListFragment<YelpBusiness> paramComboListFragment)
  {
    registerForContextMenu(paramComboListFragment.m());
    h = l();
    f();
    if (l)
    {
      h.m().setVisibility(4);
      h.a(null);
    }
    while (!m) {
      return;
    }
    h.a(getString(c.description));
    h.m().setVisibility(0);
  }
  
  public void a_()
  {
    if (g != null) {
      g.b().setVisibility(0);
    }
    f = new n();
    r().clear();
    s().notifyDataSetChanged();
    p();
  }
  
  public ListBookmarksRequest b()
  {
    return (ListBookmarksRequest)super.getLastCustomNonConfigurationInstance();
  }
  
  public void c()
  {
    g = j();
    super.c();
  }
  
  protected void d()
  {
    AppData.a(ViewIri.BookmarksMap);
  }
  
  public void e()
  {
    if (j == null)
    {
      j = new bn(this);
      j.setCancelable(false);
    }
    j.setMessage(getString(2131166444));
    j.show();
  }
  
  public void f()
  {
    if ((n == null) || (h == null)) {
      return;
    }
    clearError();
    Pair localPair = f.a(c);
    ArrayList localArrayList = n.b;
    k = n.d;
    n = null;
    if (localPair != null) {
      localArrayList.addAll(0, (Collection)first);
    }
    a(localArrayList);
    if (localPair == null) {
      h.l_();
    }
    f.a(c, localArrayList, k);
    if (localArrayList.size() >= k)
    {
      h.a(true);
      return;
    }
    h.a(new k(this));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Bookmarks;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    c = ListBookmarksRequest.SortType.values()[getAppData().f().p()];
    e = b();
    i = true;
    l = false;
    m = false;
    o();
    super.onCreate(paramBundle);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if (((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo)) && (b))
    {
      paramContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      paramView = (YelpBusiness)((ListView)paramView).getAdapter().getItem(position);
      if (paramView != null)
      {
        bf.a(this, paramContextMenu, paramView);
        paramContextMenu.add(2131166417).setOnMenuItemClickListener(new j(this, paramView));
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755010, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    paramMenuItem = new ActivityBookmarks.SortDialogFragment();
    paramMenuItem.a(o);
    paramMenuItem.show(getSupportFragmentManager().beginTransaction(), null);
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    getAppData().t().b();
    i = false;
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((e != null) && (e.isFetching())) {
      m();
    }
    while (((e != null) && (!e.isCompleted())) || (!i)) {
      return;
    }
    a_();
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityBookmarks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */