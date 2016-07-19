package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocaleSettings.a;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ck;
import com.yelp.android.appdata.webrequests.ck.a;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.android.ui.activities.tips.WriteTip;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ab;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.widgets.SpannedImageButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class ActivityTipsPage
  extends YelpListActivity
  implements ApiRequest.b<ck.a>, d.a
{
  private aj a;
  private TreeMap<Locale, d> b;
  private ck c;
  private String d;
  private String e;
  private boolean f;
  private LinkedHashSet<Locale> g;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ActivityTipsPage.class);
    paramContext.putExtra("extra.param.business_id", paramYelpBusiness.aD());
    paramContext.putExtra("extra.param.business_name", paramYelpBusiness.z());
    paramContext.putExtra("extra.param.hide_view_biz_button", paramBoolean);
    return paramContext;
  }
  
  private void a(Bundle paramBundle)
  {
    g = ((LinkedHashSet)paramBundle.getSerializable("Languages"));
    Object localObject = (ArrayList)paramBundle.getSerializable("LocaleList");
    a(getResourcesgetConfigurationlocale, (List)localObject);
    LinkedList localLinkedList = new LinkedList();
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      Locale localLocale = (Locale)((Iterator)localObject).next();
      d locald = (d)b.get(localLocale);
      ArrayList localArrayList = paramBundle.getParcelableArrayList(String.format("TipList.%s", new Object[] { localLocale }));
      if (localArrayList != null)
      {
        locald.a(localArrayList);
        localLinkedList.add(localLocale);
      }
    }
    if (!localLinkedList.isEmpty()) {
      localLinkedList.removeLast();
    }
    g.removeAll(localLinkedList);
    if (a.getCount() > 100) {
      r().setFastScrollEnabled(true);
    }
  }
  
  private void a(Locale paramLocale, List<Locale> paramList)
  {
    Object localObject1 = AppData.b().q().a();
    g.clear();
    g.add(paramLocale);
    b.put(paramLocale, new d((String)localObject1, this));
    paramList = paramList.iterator();
    Object localObject2;
    while (paramList.hasNext())
    {
      localObject2 = (Locale)paramList.next();
      if (!b.containsKey(localObject2))
      {
        b.put(localObject2, new d((String)localObject1, this));
        g.add(localObject2);
      }
    }
    paramList = g.iterator();
    int i = 0;
    if (paramList.hasNext())
    {
      localObject1 = (Locale)paramList.next();
      localObject2 = (d)b.get(localObject1);
      if (paramLocale == localObject1) {}
      for (int j = 2131166523;; j = 2131166521)
      {
        a.a(i, getString(j, new Object[] { ((Locale)localObject1).getDisplayLanguage(paramLocale) }), (BaseAdapter)localObject2);
        i += 1;
        break;
      }
    }
    r().setAdapter(a);
  }
  
  private ck b()
  {
    if ((c != null) && (c.u())) {
      return c;
    }
    Locale localLocale = AppData.b().g().h();
    if (!g.isEmpty()) {
      localLocale = (Locale)g.iterator().next();
    }
    d locald = (d)b.get(localLocale);
    if (locald == null) {}
    for (int i = 0;; i = locald.getCount())
    {
      int j = Math.min(a.getCount() / 10 * 10 + 10, 50);
      c = new ck(d, i, j, localLocale, false, this);
      c.f(new String[0]);
      return c;
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ck.a parama)
  {
    if (b.isEmpty()) {
      a(parama.c(), parama.d());
    }
    d locald = (d)b.get(parama.c());
    if (!parama.a().isEmpty())
    {
      locald.a(parama.a());
      a.notifyDataSetChanged();
    }
    Integer localInteger = (Integer)parama.b().get(parama.c());
    paramApiRequest = localInteger;
    if (localInteger == null) {
      paramApiRequest = Integer.valueOf(0);
    }
    if (a.getCount() > 100) {
      r().setFastScrollEnabled(true);
    }
    if ((parama.a().isEmpty()) || (locald.getCount() == Integer.valueOf(paramApiRequest.intValue()).intValue()))
    {
      g.remove(parama.c());
      if (g.isEmpty()) {
        r().f();
      }
    }
    if ((parama.a().isEmpty()) && (!g.isEmpty())) {
      b();
    }
  }
  
  public void a(Tip paramTip)
  {
    startActivityForResult(WriteTip.a(this, paramTip, d), 100);
  }
  
  public void a(Tip paramTip, Checkable paramCheckable)
  {
    startActivity(ActivityLogin.a(this, 2131165707, 2131166098, SendCompliment.a(this, paramTip)));
  }
  
  public void a(Tip paramTip, SpannedImageButton paramSpannedImageButton)
  {
    if (AppData.b().q().d())
    {
      new em(paramTip.a(), paramSpannedImageButton.isChecked()).f(new Void[0]);
      if (paramSpannedImageButton.isChecked()) {
        paramTip.g().a();
      }
      for (;;)
      {
        paramTip = b.entrySet().iterator();
        while (paramTip.hasNext()) {
          ((d)((Map.Entry)paramTip.next()).getValue()).notifyDataSetChanged();
        }
        paramTip.g().b();
      }
    }
    paramSpannedImageButton.toggle();
    paramSpannedImageButton.getContext().startActivity(ActivityLogin.a(this, 2131165697, 2131166108));
  }
  
  public void b(Tip paramTip)
  {
    startActivity(ActivityUserProfile.a(this, paramTip.b()));
  }
  
  protected void c()
  {
    super.c();
    b();
  }
  
  public void c(Tip paramTip)
  {
    startActivityForResult(TipComplimentsLikes.a(this, paramTip, e, f), 100);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessTips;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return g.b(d);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 100)
    {
      label11:
      String str;
      Iterator localIterator1;
      if (paramInt2 != -1)
      {
        return;
      }
      else
      {
        str = ((Tip)paramIntent.getParcelableExtra("tip")).a();
        localIterator1 = new ArrayList(b.keySet()).iterator();
      }
      Object localObject;
      List localList;
      label94:
      do
      {
        break label94;
        if (!localIterator1.hasNext()) {
          break label11;
        }
        localObject = (Locale)localIterator1.next();
        localList = ((d)b.get(localObject)).a();
        Iterator localIterator2 = localList.iterator();
        if (!localIterator2.hasNext()) {
          break;
        }
        localObject = (Tip)localIterator2.next();
      } while (!((Tip)localObject).a().equals(str));
      if (paramIntent.getBooleanExtra("tip_deleted", false)) {
        localList.remove(localObject);
      }
      if (paramIntent.hasExtra("tip_updated"))
      {
        paramIntent = (Tip)paramIntent.getParcelableExtra("tip_updated");
        ((Tip)localObject).a(paramIntent.e());
        ((Tip)localObject).a(paramIntent.f());
      }
      a.notifyDataSetChanged();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ScrollToLoadListView localScrollToLoadListView = r();
    Object localObject = getIntent();
    d = ((Intent)localObject).getStringExtra("extra.param.business_id");
    e = ((Intent)localObject).getStringExtra("extra.param.business_name");
    f = ((Intent)localObject).getBooleanExtra("extra.param.hide_view_biz_button", false);
    localScrollToLoadListView.setItemsCanFocus(true);
    localObject = createLoadingPanel();
    ((PanelLoading)localObject).a(2131166078);
    localScrollToLoadListView.setEmptyView((View)localObject);
    a = new aj();
    b = new TreeMap(new LocaleSettings.a());
    g = new LinkedHashSet();
    g.add(AppData.b().g().h());
    if (paramBundle != null) {
      a(paramBundle);
    }
    for (;;)
    {
      setTitle(e);
      registerForContextMenu(localScrollToLoadListView);
      localScrollToLoadListView.setAdapter(a);
      return;
      b();
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramView = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    paramView = a.getItem(position);
    if ((paramView instanceof YelpBusinessReview))
    {
      paramView = (YelpBusinessReview)paramView;
      paramContextMenu.setHeaderTitle(e);
      ab.a(this, paramContextMenu, paramView.b(), paramView.O());
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755052, paramMenu);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramApiRequest instanceof ck))
    {
      r().f();
      a.notifyDataSetChanged();
      if (b.isEmpty()) {
        break label55;
      }
      if (!g.isEmpty()) {
        b();
      }
    }
    else
    {
      return;
    }
    r().f();
    return;
    label55:
    r().f();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131690998)
    {
      AppData.a(EventIri.BusinessMoreTipsAddTip);
      startActivity(ActivityLogin.a(this, 2131165696, 2131166093, WriteTip.a(this, d)));
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putSerializable("LocaleList", new ArrayList(b.keySet()));
    Iterator localIterator = b.keySet().iterator();
    while (localIterator.hasNext())
    {
      Locale localLocale = (Locale)localIterator.next();
      ArrayList localArrayList = new ArrayList(((d)b.get(localLocale)).a());
      paramBundle.putParcelableArrayList(String.format("TipList.%s", new Object[] { localLocale }), localArrayList);
    }
    paramBundle.putSerializable("Languages", g);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityTipsPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */