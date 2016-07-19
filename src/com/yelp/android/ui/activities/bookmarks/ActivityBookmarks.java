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
import android.support.v4.app.o;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.a;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.appdata.webrequests.s;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import com.yelp.android.ui.util.SuggestionFilter.b;
import com.yelp.android.ui.util.af;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.EditTextAndClearButton;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class ActivityBookmarks
  extends YelpActivity
{
  private final View.OnFocusChangeListener A = new View.OnFocusChangeListener()
  {
    public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
    {
      if (paramAnonymousBoolean)
      {
        ActivityBookmarks.s(ActivityBookmarks.this).setVisibility(8);
        getSupportFragmentManager().a().a(2131689724, ActivityBookmarks.t(ActivityBookmarks.this), "suggest_fragment").a("suggest_fragment").a();
        ActivityBookmarks.r(ActivityBookmarks.this).filter("");
        ActivityBookmarks.q(ActivityBookmarks.this).setHint(2131166497);
        AppData.a(EventIri.BookmarksSearchBar);
      }
    }
  };
  private final AdapterView.OnItemClickListener B = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
      if ((paramAnonymousAdapterView instanceof RichSearchSuggestion))
      {
        paramAnonymousAdapterView = (RichSearchSuggestion)paramAnonymousAdapterView;
        ActivityBookmarks.a(paramAnonymousInt, paramAnonymousAdapterView.i());
      }
      switch (ActivityBookmarks.3.a[paramAnonymousAdapterView.a().ordinal()])
      {
      default: 
        ActivityBookmarks.a(ActivityBookmarks.this, paramAnonymousAdapterView.m());
        ActivityBookmarks.a(ActivityBookmarks.this, paramAnonymousAdapterView.a().equals(RichSearchSuggestion.RichSearchSuggestionType.CATEGORY));
        ActivityBookmarks.q(ActivityBookmarks.this).getEditText().setText(ActivityBookmarks.d(ActivityBookmarks.this));
        ActivityBookmarks.u(ActivityBookmarks.this);
        return;
      }
      startActivity(ActivityBusinessPage.b(paramAnonymousView.getContext(), paramAnonymousAdapterView.g().aD()));
    }
  };
  private TextView.OnEditorActionListener C = new TextView.OnEditorActionListener()
  {
    public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
    {
      if ((paramAnonymousInt == 0) && (ar.a(paramAnonymousKeyEvent)))
      {
        ActivityBookmarks.a(ActivityBookmarks.this, ActivityBookmarks.q(ActivityBookmarks.this).getText().toString());
        ActivityBookmarks.a(ActivityBookmarks.d(ActivityBookmarks.this));
        ActivityBookmarks.u(ActivityBookmarks.this);
        return true;
      }
      return false;
    }
  };
  private ListBookmarksRequest.SortType a;
  private ListBookmarksRequest.SortType b;
  private ArrayList<YelpBusiness> c;
  private ListBookmarksRequest d;
  private s e;
  private a f;
  private int g;
  private boolean h;
  private boolean i;
  private String j;
  private String k;
  private boolean l;
  private ListBookmarksRequest.a m;
  private af<RichSearchSuggestion> n;
  private com.yelp.android.ui.activities.search.a o;
  private LinearLayout p;
  private TextView q;
  private EditTextAndClearButton r;
  private ViewGroup s;
  private BookmarksListFragment t;
  private BookmarksMapFragment u;
  private BookmarksSuggestFragment v;
  private b w;
  private final k.b<ListBookmarksRequest.a> x = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ListBookmarksRequest.a paramAnonymousa)
    {
      ActivityBookmarks.a(ActivityBookmarks.this, paramAnonymousa);
      b();
    }
    
    public boolean a()
    {
      return true;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      disableLoading();
      ActivityBookmarks.a(ActivityBookmarks.this).clear();
      ActivityBookmarks.h(ActivityBookmarks.this).m().f();
      ActivityBookmarks.o(ActivityBookmarks.this).setVisibility(8);
      ActivityBookmarks.this.onError(paramAnonymousApiRequest, paramAnonymousYelpException);
    }
  };
  private final ActivityBookmarks.SortDialogFragment.a y = new ActivityBookmarks.SortDialogFragment.a()
  {
    public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      AppData.b().f().b(paramAnonymousInt);
      ActivityBookmarks.a(ActivityBookmarks.this, ListBookmarksRequest.SortType.values()[paramAnonymousInt]);
      ActivityBookmarks.p(ActivityBookmarks.this).setText(cdescriptionPastParticiple);
      ActivityBookmarks.a(ActivityBookmarks.c(ActivityBookmarks.this));
      a();
      paramAnonymousDialogInterface.dismiss();
    }
  };
  private final TextWatcher z = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable) {}
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      paramAnonymousCharSequence = ActivityBookmarks.q(ActivityBookmarks.this).getEditText();
      if (paramAnonymousCharSequence.isFocused()) {
        ActivityBookmarks.r(ActivityBookmarks.this).filter(paramAnonymousCharSequence.getText().toString());
      }
    }
  };
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityBookmarks.class);
  }
  
  private void a(List<YelpBusiness> paramList)
  {
    c.clear();
    c.addAll(paramList);
    if ((!j.equals(k)) || (!a.equals(b))) {}
    for (int i1 = 1;; i1 = 0)
    {
      k = j;
      b = a;
      w.a(c);
      if ((w == t) && (i1 != 0)) {
        t.m().b(false);
      }
      if (c.isEmpty()) {
        h();
      }
      disableLoading();
      return;
    }
  }
  
  private static void b(int paramInt, String paramString)
  {
    com.yelp.android.g.a locala = new com.yelp.android.g.a();
    locala.put("suggestion_list_index", Integer.valueOf(paramInt));
    locala.put("suggestion_type", paramString);
    AppData.a(EventIri.BookmarksSearchSuggest, locala);
  }
  
  private static void b(ListBookmarksRequest.SortType paramSortType)
  {
    if (paramSortType == ListBookmarksRequest.SortType.ALPHABETICAL) {
      AppData.a(EventIri.BookmarksSortAlpha);
    }
    do
    {
      return;
      if (paramSortType == ListBookmarksRequest.SortType.CHRONOLOGICAL)
      {
        AppData.a(EventIri.BookmarksSortDate);
        return;
      }
    } while (paramSortType != ListBookmarksRequest.SortType.DISTANCE);
    AppData.a(EventIri.BookmarksSortDistance);
  }
  
  private static void b(String paramString)
  {
    AppData.a(EventIri.BookmarksSearchSearch, "term", paramString);
  }
  
  private void c()
  {
    u = ((BookmarksMapFragment)getSupportFragmentManager().a("map_fragment"));
    if (u == null) {
      u = BookmarksMapFragment.b();
    }
    u.a(c);
    if (!u.isVisible()) {
      getSupportFragmentManager().a().a(2131689724, u, "map_fragment").a("list_fragment").a();
    }
    p.setVisibility(8);
    w = u;
  }
  
  private void d()
  {
    getSupportFragmentManager().a().a(u).a();
    getSupportFragmentManager().c();
    w = t;
    f();
  }
  
  private void e()
  {
    getSupportFragmentManager().a().a(v).a();
    getSupportFragmentManager().c();
    f();
    r.setHint(2131166511);
    r.clearFocus();
    as.b(r);
  }
  
  private void f()
  {
    LinearLayout localLinearLayout = p;
    if (w == t) {}
    for (int i1 = 0;; i1 = 8)
    {
      localLinearLayout.setVisibility(i1);
      return;
    }
  }
  
  private void g()
  {
    clearError();
    if ((d != null) && (!d.v())) {
      d.a(true);
    }
    Pair localPair = f.a(a, j);
    if ((localPair == null) || (((List)first).size() < ((Integer)second).intValue()))
    {
      int i1;
      if (localPair == null)
      {
        i1 = 0;
        if ((j == null) || (j.isEmpty())) {
          break label161;
        }
        e = new s(x, a, i1, l, j);
        e.a(new Void[0]);
      }
      for (;;)
      {
        if (i1 == 0) {
          enableLoading();
        }
        return;
        i1 = ((List)first).size();
        break;
        label161:
        d = new ListBookmarksRequest(x, a, i1);
        d.a(new Void[0]);
      }
    }
    a((List)first);
  }
  
  private void h()
  {
    s.setVisibility(8);
    populateError(ErrorType.NO_BOOKMARKS);
  }
  
  private void i()
  {
    g();
    p.setVisibility(0);
    ar.c(r);
    r.clearFocus();
    getSupportFragmentManager().a().a(v).a();
    getSupportFragmentManager().c();
  }
  
  public void a()
  {
    c.clear();
    g();
  }
  
  public void b()
  {
    if (m == null) {
      return;
    }
    clearError();
    Pair localPair = f.a(a, j);
    ArrayList localArrayList = m.b;
    g = m.d;
    m = null;
    if (localPair != null) {
      localArrayList.addAll(0, (Collection)first);
    }
    a(localArrayList);
    f.a(a, j, localArrayList, g);
    if (localArrayList.size() >= g)
    {
      t.b(true);
      return;
    }
    t.a(new Runnable()
    {
      public void run()
      {
        if (((ActivityBookmarks.l(ActivityBookmarks.this) == null) || (ActivityBookmarks.l(ActivityBookmarks.this).v())) && ((ActivityBookmarks.m(ActivityBookmarks.this) == null) || (ActivityBookmarks.m(ActivityBookmarks.this).v()))) {
          ActivityBookmarks.n(ActivityBookmarks.this);
        }
      }
    });
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onBackPressed()
  {
    if ((u != null) && (u.isVisible()))
    {
      d();
      if (!i) {}
      for (boolean bool = true;; bool = false)
      {
        i = bool;
        invalidateOptionsMenu();
        return;
      }
    }
    if ((v != null) && (v.isVisible()))
    {
      e();
      return;
    }
    super.onBackPressed();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903073);
    t = ((BookmarksListFragment)getSupportFragmentManager().a("list_fragment"));
    if (t == null) {
      t = BookmarksListFragment.c();
    }
    u = ((BookmarksMapFragment)getSupportFragmentManager().a("map_fragment"));
    if (u == null) {
      u = BookmarksMapFragment.b();
    }
    v = ((BookmarksSuggestFragment)getSupportFragmentManager().a("suggest_fragment"));
    if (v == null) {
      v = BookmarksSuggestFragment.c();
    }
    v.a(B);
    if (paramBundle != null)
    {
      i = paramBundle.getBoolean("is_showing_list");
      registerReceiver(new BroadcastReceiver()
      {
        public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          paramAnonymousContext = (YelpBusiness)ObjectDirtyEvent.a(paramAnonymousIntent);
          ActivityBookmarks.a(ActivityBookmarks.this).remove(paramAnonymousContext);
          ActivityBookmarks.b(ActivityBookmarks.this);
          ActivityBookmarks.f(ActivityBookmarks.this).a(ActivityBookmarks.c(ActivityBookmarks.this), ActivityBookmarks.d(ActivityBookmarks.this), ActivityBookmarks.a(ActivityBookmarks.this), ActivityBookmarks.e(ActivityBookmarks.this));
          ActivityBookmarks.g(ActivityBookmarks.this).a(ActivityBookmarks.a(ActivityBookmarks.this));
          ActivityBookmarks.h(ActivityBookmarks.this).a(ActivityBookmarks.a(ActivityBookmarks.this));
          if (ActivityBookmarks.a(ActivityBookmarks.this).isEmpty()) {
            ActivityBookmarks.i(ActivityBookmarks.this);
          }
        }
      }, ObjectDirtyEvent.a("com.yelp.android.bookmarks.remove"));
      a = ListBookmarksRequest.SortType.values()[getAppData().f().u()];
      c = new ArrayList();
      h = true;
      j = "";
      if (i) {
        break label473;
      }
    }
    label473:
    for (w = u;; w = t)
    {
      q = ((TextView)findViewById(2131690004));
      s = ((ViewGroup)findViewById(2131689723));
      p = ((LinearLayout)findViewById(2131690003));
      p.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new ActivityBookmarks.SortDialogFragment();
          paramAnonymousView.a(ActivityBookmarks.j(ActivityBookmarks.this));
          paramAnonymousView.a(getAppData().f().u());
          paramAnonymousView.show(getSupportFragmentManager().a(), null);
          AppData.a(EventIri.BookmarksSort);
        }
      });
      r = ((EditTextAndClearButton)findViewById(2131690889));
      r.setOnEditorActionListener(C);
      r.a(z);
      r.getEditText().setOnFocusChangeListener(A);
      r.setHint(2131166511);
      r.clearFocus();
      o = new com.yelp.android.ui.activities.search.a(Collections.emptyList());
      v.a(o);
      n = new af(new ArrayList(), new ArrayList(), new ArrayList(), true, SuggestionFilter.SuggestionType.BOOKMARK, new SuggestionFilter.b()
      {
        public void a()
        {
          ActivityBookmarks.k(ActivityBookmarks.this).notifyDataSetInvalidated();
        }
        
        public void a(List<RichSearchSuggestion> paramAnonymousList)
        {
          ActivityBookmarks.k(ActivityBookmarks.this).a(paramAnonymousList);
          ActivityBookmarks.k(ActivityBookmarks.this).notifyDataSetChanged();
        }
      });
      n.a(AppData.b().r().c());
      q.setText(a.descriptionPastParticiple);
      f = new a();
      return;
      i = true;
      getSupportFragmentManager().a().a(2131689724, t, "list_fragment").a();
      break;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    MenuInflater localMenuInflater = getMenuInflater();
    if (i) {}
    for (int i1 = 2131755011;; i1 = 2131755012)
    {
      localMenuInflater.inflate(i1, paramMenu);
      return true;
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool2 = true;
    switch (paramMenuItem.getItemId())
    {
    default: 
      bool1 = super.onOptionsItemSelected(paramMenuItem);
    }
    do
    {
      do
      {
        return bool1;
        if (d == null) {
          break;
        }
        bool1 = bool2;
      } while (d.u());
      if (e == null) {
        break;
      }
      bool1 = bool2;
    } while (e.u());
    if (!i) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      i = bool1;
      invalidateOptionsMenu();
      if (!i) {
        break;
      }
      d();
      return true;
    }
    c();
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    getAppData().y().b();
    h = false;
    freezeRequest("bookmarks", d);
    freezeRequest("bookmark_search", e);
  }
  
  protected void onResume()
  {
    super.onResume();
    d = ((ListBookmarksRequest)thawRequest("bookmarks", d, x));
    e = ((s)thawRequest("bookmark_search", e, x));
    if ((d != null) && (d.u())) {
      enableLoading();
    }
    while (((d != null) && (!d.v())) || (!h)) {
      return;
    }
    a();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("is_showing_list", i);
  }
  
  public static class SortDialogFragment
    extends DialogFragment
  {
    private a a;
    private int b;
    
    public void a(int paramInt)
    {
      b = paramInt;
    }
    
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
      ((AlertDialog.Builder)localObject1).setTitle(2131165795).setNegativeButton(getString(2131165583), null).setSingleChoiceItems(paramBundle, b, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ActivityBookmarks.SortDialogFragment.a(ActivityBookmarks.SortDialogFragment.this).a(paramAnonymousDialogInterface, paramAnonymousInt);
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
    private final com.yelp.android.g.e<String, Pair<List<YelpBusiness>, Integer>> a = new com.yelp.android.g.e(10);
    
    public Pair<List<YelpBusiness>, Integer> a(ListBookmarksRequest.SortType paramSortType, String paramString)
    {
      return (Pair)a.get(paramSortType.name().concat(paramString));
    }
    
    public void a(ListBookmarksRequest.SortType paramSortType, String paramString, List<YelpBusiness> paramList, int paramInt)
    {
      paramSortType = paramSortType.name().concat(paramString);
      a.put(paramSortType, new Pair(paramList, Integer.valueOf(paramInt)));
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(ArrayList<YelpBusiness> paramArrayList);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */