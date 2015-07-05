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
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cw;
import com.yelp.android.appdata.webrequests.cx;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fq;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.y;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;
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
import com.yelp.android.ui.util.bf;
import com.yelp.android.ui.util.bs;
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
  implements m<cx>, bg
{
  private bs a;
  private TreeMap<Locale, aw> b;
  private cw c;
  private String d;
  private String e;
  private boolean f;
  private LinkedHashSet<Locale> g;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, ActivityTipsPage.class);
    paramContext.putExtra("extra.param.business_id", paramYelpBusiness.getId());
    paramContext.putExtra("extra.param.business_name", paramYelpBusiness.getDisplayName());
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
      aw localaw = (aw)b.get(localLocale);
      ArrayList localArrayList = paramBundle.getParcelableArrayList(String.format("TipList.%s", new Object[] { localLocale }));
      if (localArrayList != null)
      {
        localaw.a(localArrayList);
        localLinkedList.add(localLocale);
      }
    }
    if (!localLinkedList.isEmpty()) {
      localLinkedList.removeLast();
    }
    g.removeAll(localLinkedList);
    if (a.getCount() > 100) {
      q().setFastScrollEnabled(true);
    }
  }
  
  private void a(Locale paramLocale, List<Locale> paramList)
  {
    Object localObject1 = AppData.b().m().b();
    g.clear();
    g.add(paramLocale);
    b.put(paramLocale, new aw((String)localObject1, this));
    paramList = paramList.iterator();
    Object localObject2;
    while (paramList.hasNext())
    {
      localObject2 = (Locale)paramList.next();
      if (!b.containsKey(localObject2))
      {
        b.put(localObject2, new aw((String)localObject1, this));
        g.add(localObject2);
      }
    }
    paramList = g.iterator();
    int i = 0;
    if (paramList.hasNext())
    {
      localObject1 = (Locale)paramList.next();
      localObject2 = (aw)b.get(localObject1);
      if (paramLocale == localObject1) {}
      for (int j = 2131166526;; j = 2131166522)
      {
        a.a(i, getString(j, new Object[] { ((Locale)localObject1).getDisplayLanguage(paramLocale) }), (BaseAdapter)localObject2);
        i += 1;
        break;
      }
    }
    q().setAdapter(a);
  }
  
  private cw c()
  {
    if ((c != null) && (c.isFetching())) {
      return c;
    }
    Locale localLocale = AppData.b().g().h();
    if (!g.isEmpty()) {
      localLocale = (Locale)g.iterator().next();
    }
    aw localaw = (aw)b.get(localLocale);
    if (localaw == null) {}
    for (int i = 0;; i = localaw.getCount())
    {
      int j = Math.min(a.getCount() / 10 * 10 + 10, 50);
      c = new cw(d, i, j, localLocale, false, this);
      c.execute(new String[0]);
      return c;
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cx paramcx)
  {
    if (b.isEmpty()) {
      a(paramcx.c(), paramcx.d());
    }
    aw localaw = (aw)b.get(paramcx.c());
    if (!paramcx.a().isEmpty())
    {
      localaw.a(paramcx.a());
      a.notifyDataSetChanged();
    }
    Integer localInteger = (Integer)paramcx.b().get(paramcx.c());
    paramApiRequest = localInteger;
    if (localInteger == null) {
      paramApiRequest = Integer.valueOf(0);
    }
    if (a.getCount() > 100) {
      q().setFastScrollEnabled(true);
    }
    if ((paramcx.a().isEmpty()) || (localaw.getCount() == Integer.valueOf(paramApiRequest.intValue()).intValue()))
    {
      g.remove(paramcx.c());
      if (g.isEmpty()) {
        q().f();
      }
    }
    if ((paramcx.a().isEmpty()) && (!g.isEmpty())) {
      c();
    }
  }
  
  public void a(Tip paramTip)
  {
    Intent localIntent = WriteTip.a(this, paramTip, d);
    localIntent.putExtra("changed entry id", paramTip.getId());
    startActivityForResult(localIntent, 100);
  }
  
  public void a(Tip paramTip, Checkable paramCheckable)
  {
    startActivity(ActivityLogin.a(this, 2131166775, 2131166038, SendCompliment.a(this, paramTip)));
  }
  
  public void a(Tip paramTip, SpannedImageButton paramSpannedImageButton)
  {
    dc localdc = AppData.b().m();
    if (localdc.e())
    {
      new fq(paramTip.getId(), paramSpannedImageButton.isChecked()).execute(new Void[0]);
      if (paramSpannedImageButton.isChecked()) {
        paramTip.getFeedback().addPositiveFeedback();
      }
      for (;;)
      {
        paramTip = b.entrySet().iterator();
        while (paramTip.hasNext()) {
          ((aw)((Map.Entry)paramTip.next()).getValue()).notifyDataSetChanged();
        }
        paramTip.getFeedback().removePositiveFeedback();
      }
    }
    paramSpannedImageButton.toggle();
    if (localdc.c()) {}
    for (int i = 2131166777;; i = 2131166049)
    {
      paramSpannedImageButton.getContext().startActivity(ActivityLogin.a(paramSpannedImageButton.getContext(), i));
      return;
    }
  }
  
  public void b(Tip paramTip)
  {
    startActivity(ActivityUserProfile.a(this, paramTip.getUserId()));
  }
  
  public void c(Tip paramTip)
  {
    Intent localIntent = TipComplimentsLikes.a(this, paramTip, e, f);
    localIntent.putExtra("changed entry id", paramTip.getId());
    startActivityForResult(localIntent, 100);
  }
  
  protected void d()
  {
    super.d();
    c();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessTips;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
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
        str = paramIntent.getStringExtra("changed entry id");
        localIterator1 = new ArrayList(b.keySet()).iterator();
      }
      Object localObject;
      List localList;
      label88:
      do
      {
        break label88;
        if (!localIterator1.hasNext()) {
          break label11;
        }
        localObject = (Locale)localIterator1.next();
        localList = ((aw)b.get(localObject)).a();
        Iterator localIterator2 = localList.iterator();
        if (!localIterator2.hasNext()) {
          break;
        }
        localObject = (Tip)localIterator2.next();
      } while (!((Tip)localObject).getId().equals(str));
      if (paramIntent.getBooleanExtra("did we delete it?", false)) {
        localList.remove(localObject);
      }
      if (paramIntent.hasExtra("bundle to be passed"))
      {
        paramIntent = (Tip)paramIntent.getBundleExtra("bundle to be passed").getParcelable(TipFeedEntry.CONTENT_KEY);
        ((Tip)localObject).setText(paramIntent.getText());
        ((Tip)localObject).setEditedBitmap(paramIntent.getEditedBitmap());
      }
      a.notifyDataSetChanged();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ScrollToLoadListView localScrollToLoadListView = q();
    Object localObject = getIntent();
    d = ((Intent)localObject).getStringExtra("extra.param.business_id");
    e = ((Intent)localObject).getStringExtra("extra.param.business_name");
    f = ((Intent)localObject).getBooleanExtra("extra.param.hide_view_biz_button", false);
    localScrollToLoadListView.setItemsCanFocus(true);
    localObject = createLoadingPanel();
    ((PanelLoading)localObject).b(2131166019);
    localScrollToLoadListView.setEmptyView((View)localObject);
    a = new bs();
    b = new TreeMap(new y());
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
      c();
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
      bf.a(this, paramContextMenu, paramView.getUserId(), paramView.getUserName());
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755048, paramMenu);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramApiRequest instanceof cw))
    {
      q().f();
      a.notifyDataSetChanged();
      if (b.isEmpty()) {
        break label55;
      }
      if (!g.isEmpty()) {
        c();
      }
    }
    else
    {
      return;
    }
    q().f();
    return;
    label55:
    q().f();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494124)
    {
      AppData.a(EventIri.BusinessMoreTipsAddTip);
      startActivity(ActivityLogin.a(this, 2131166772, 2131166033, WriteTip.a(this, d)));
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
      ArrayList localArrayList = new ArrayList(((aw)b.get(localLocale)).a());
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