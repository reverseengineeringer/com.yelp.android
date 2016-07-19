package com.yelp.android.ui.activities.bookmarks;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.l;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.a;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.dk;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.nearby.BusinessListComboActivity;
import com.yelp.android.ui.activities.nearby.ComboListFragment;
import com.yelp.android.ui.activities.nearby.ComboMapFragment;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.j;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.ab;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.w;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public class ActivityComboBookmarks
  extends BusinessListComboActivity
  implements com.yelp.android.ui.k
{
  private ListBookmarksRequest.SortType c;
  private BusinessAdapter<YelpBusiness> d;
  private ListBookmarksRequest e;
  private a f;
  private ComboMapFragment g;
  private ComboListFragment h;
  private boolean i;
  private com.yelp.android.ui.dialogs.e j;
  private int k;
  private boolean l;
  private boolean m;
  private ListBookmarksRequest.a n;
  private final ActivityComboBookmarks.SortDialogFragment.a o = new ActivityComboBookmarks.SortDialogFragment.a()
  {
    public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      getAppData().f().b(paramAnonymousInt);
      ActivityComboBookmarks.a(ActivityComboBookmarks.this, ListBookmarksRequest.SortType.values()[paramAnonymousInt]);
      ActivityComboBookmarks.a(ActivityComboBookmarks.this, new ActivityComboBookmarks.a());
      p_();
      paramAnonymousDialogInterface.dismiss();
    }
  };
  private final k.b<ListBookmarksRequest.a> p = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ListBookmarksRequest.a paramAnonymousa)
    {
      ActivityComboBookmarks.a(ActivityComboBookmarks.this, paramAnonymousa);
      f();
    }
    
    public boolean a()
    {
      return true;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      n();
      ActivityComboBookmarks.c(ActivityComboBookmarks.this).clear();
      ActivityComboBookmarks.d(ActivityComboBookmarks.this).b().setVisibility(4);
      ActivityComboBookmarks.a(ActivityComboBookmarks.this, true);
      if (ActivityComboBookmarks.e(ActivityComboBookmarks.this) != null)
      {
        ActivityComboBookmarks.e(ActivityComboBookmarks.this).m().setVisibility(4);
        ActivityComboBookmarks.e(ActivityComboBookmarks.this).a(null);
      }
      ActivityComboBookmarks.f(ActivityComboBookmarks.this).notifyDataSetChanged();
      populateError(ErrorType.getTypeFromException(paramAnonymousYelpException), ActivityComboBookmarks.g(ActivityComboBookmarks.this));
    }
  };
  private final PanelError.a q = new PanelError.a()
  {
    public void q_()
    {
      if (ActivityComboBookmarks.h(ActivityComboBookmarks.this).getErrorType() == ErrorType.NO_LOCATION_PERMISSION)
      {
        com.yelp.android.appdata.k.a(ActivityComboBookmarks.this, 250, new PermissionGroup[] { PermissionGroup.LOCATION });
        return;
      }
      p_();
    }
  };
  
  public static Intent a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, ActivityComboBookmarks.class);
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
    g.a(r(), new j(this, 0));
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
    g.a(r(), new j(this, 0));
    h.k();
    s().a(r(), true);
    s().notifyDataSetChanged();
    if (r().isEmpty()) {
      q();
    }
  }
  
  private void o()
  {
    registerReceiver(new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        paramAnonymousContext = (YelpBusiness)ObjectDirtyEvent.a(paramAnonymousIntent);
        ActivityComboBookmarks.a(ActivityComboBookmarks.this, paramAnonymousContext);
      }
    }, ObjectDirtyEvent.a("com.yelp.android.bookmarks.remove"));
  }
  
  private void p()
  {
    clearError();
    if ((e != null) && (!e.v())) {
      e.a(true);
    }
    Pair localPair = f.a(c);
    if ((localPair == null) || (((List)first).size() < ((Integer)second).intValue()))
    {
      if (localPair == null) {}
      for (int i1 = 0;; i1 = ((List)first).size())
      {
        e = new ListBookmarksRequest(p, c, i1);
        e.a(new Void[0]);
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
  
  protected w<YelpBusiness> a(int paramInt)
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
      j = new com.yelp.android.ui.dialogs.e(this);
      j.setCancelable(false);
    }
    j.setMessage(getString(2131166446));
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
      h.k();
    }
    f.a(c, localArrayList, k);
    if (localArrayList.size() >= k)
    {
      h.b(true);
      return;
    }
    h.a(new Runnable()
    {
      public void run()
      {
        if ((ActivityComboBookmarks.a(ActivityComboBookmarks.this) == null) || (ActivityComboBookmarks.a(ActivityComboBookmarks.this).v())) {
          ActivityComboBookmarks.b(ActivityComboBookmarks.this);
        }
      }
    });
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Bookmarks;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    c = ListBookmarksRequest.SortType.values()[getAppData().f().u()];
    e = b();
    i = true;
    l = false;
    m = false;
    o();
    super.onCreate(paramBundle);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, final View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if (((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo)) && (b))
    {
      paramContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      paramView = (YelpBusiness)((ListView)paramView).getAdapter().getItem(position);
      if (paramView != null)
      {
        ab.a(this, paramContextMenu, paramView);
        paramContextMenu.add(2131166443).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener()
        {
          public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
          {
            new dk(paramView, new ActivityComboBookmarks.b(ActivityComboBookmarks.this, paramView)).f(new Void[0]);
            e();
            return true;
          }
        });
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
    paramMenuItem = new SortDialogFragment();
    paramMenuItem.a(o);
    paramMenuItem.show(getSupportFragmentManager().a(), null);
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    getAppData().y().b();
    i = false;
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (paramInt == 250)
    {
      paramArrayOfString = com.yelp.android.appdata.k.a(paramArrayOfString, paramArrayOfInt);
      if ((paramArrayOfString.containsKey(PermissionGroup.LOCATION)) && (((Boolean)paramArrayOfString.get(PermissionGroup.LOCATION)).booleanValue()))
      {
        AppData.b().F();
        p_();
      }
      return;
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((e != null) && (e.u())) {
      m();
    }
    while (((e != null) && (!e.v())) || (!i)) {
      return;
    }
    p_();
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return e;
  }
  
  public void p_()
  {
    if (g != null) {
      g.b().setVisibility(0);
    }
    f = new a();
    r().clear();
    s().notifyDataSetChanged();
    p();
  }
  
  public static class SortDialogFragment
    extends DialogFragment
  {
    private a a;
    
    public void a(a parama)
    {
      a = parama;
    }
    
    public Dialog onCreateDialog(Bundle paramBundle)
    {
      paramBundle = new String[ListBookmarksRequest.SortType.values().length];
      Object localObject1 = ListBookmarksRequest.SortType.values();
      int j = localObject1.length;
      int i = 0;
      while (i < j)
      {
        Object localObject2 = localObject1[i];
        paramBundle[localObject2.ordinal()] = getString(description);
        i += 1;
      }
      localObject1 = new AlertDialog.Builder(getActivity());
      ((AlertDialog.Builder)localObject1).setTitle(2131165795).setItems(paramBundle, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ActivityComboBookmarks.SortDialogFragment.a(ActivityComboBookmarks.SortDialogFragment.this).a(paramAnonymousDialogInterface, paramAnonymousInt);
        }
      });
      return ((AlertDialog.Builder)localObject1).create();
    }
    
    public static abstract interface a
    {
      public abstract void a(DialogInterface paramDialogInterface, int paramInt);
    }
  }
  
  public static final class a
  {
    private final com.yelp.android.g.e<String, Pair<List<YelpBusiness>, Integer>> a = new com.yelp.android.g.e(ListBookmarksRequest.SortType.values().length);
    
    public Pair<List<YelpBusiness>, Integer> a(ListBookmarksRequest.SortType paramSortType)
    {
      return (Pair)a.get(paramSortType.name());
    }
    
    public void a(ListBookmarksRequest.SortType paramSortType, List<YelpBusiness> paramList, int paramInt)
    {
      a.put(paramSortType.name(), new Pair(paramList, Integer.valueOf(paramInt)));
    }
  }
  
  private class b
    implements c.a
  {
    private YelpBusiness b;
    
    public b(YelpBusiness paramYelpBusiness)
    {
      b = paramYelpBusiness;
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
    {
      if (ActivityComboBookmarks.i(ActivityComboBookmarks.this) != null) {
        ActivityComboBookmarks.i(ActivityComboBookmarks.this).dismiss();
      }
      ActivityComboBookmarks.a(ActivityComboBookmarks.this, b);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      if (ActivityComboBookmarks.i(ActivityComboBookmarks.this) != null) {
        ActivityComboBookmarks.i(ActivityComboBookmarks.this).dismiss();
      }
      as.a(2131165849, 1);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityComboBookmarks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */