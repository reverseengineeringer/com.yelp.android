package com.yelp.android.ui.activities;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.AbsListView.LayoutParams;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.k;
import com.yelp.android.database.d;
import com.yelp.android.database.q;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bf;
import com.yelp.android.ui.util.cp;
import java.util.ArrayList;

public class ActivityRecents
  extends YelpListActivity
{
  private static final BusinessAdapter.DisplayFeature[] a = { BusinessAdapter.DisplayFeature.ALTERNATE_NAMES, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.ADDRESS, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.DISTANCE, BusinessAdapter.DisplayFeature.BOOKMARK, BusinessAdapter.DisplayFeature.PRICE };
  private BusinessAdapter<YelpBusiness> b;
  private ArrayList<YelpBusiness> c;
  private dr d;
  private boolean e;
  
  private void a(YelpBusiness paramYelpBusiness)
  {
    if (c != null)
    {
      String str = paramYelpBusiness.getId();
      int j = c.size();
      int i = 0;
      while (i < j)
      {
        if (((YelpBusiness)c.get(i)).getId().equals(str)) {
          c.set(i, paramYelpBusiness);
        }
        i += 1;
      }
      b.notifyDataSetChanged();
    }
    AppData.b().i().f().a(paramYelpBusiness);
  }
  
  private final View f()
  {
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -2, 3));
    Button localButton = new Button(this);
    localButton.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    int i = ao.e;
    topMargin = i;
    rightMargin = i;
    leftMargin = i;
    bottomMargin = i;
    localButton.setLayoutParams(localLayoutParams);
    localButton.setText(2131165519);
    localButton.setOnClickListener(new dq(this));
    localLinearLayout.addView(localButton);
    return localLinearLayout;
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = (YelpBusiness)paramListView.getAdapter().getItem(paramInt);
    if (paramListView != null)
    {
      e = true;
      startActivityForResult(ActivityBusinessPage.a(this, paramListView), 100);
    }
  }
  
  public dr c()
  {
    return d;
  }
  
  public dr e()
  {
    dr localdr2 = (dr)super.getLastCustomNonConfigurationInstance();
    dr localdr1 = localdr2;
    if (localdr2 == null) {
      localdr1 = new dr();
    }
    return localdr1;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Recents;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 100) && (paramIntent != null) && (paramIntent.hasExtra("extra.business"))) {
      a((YelpBusiness)paramIntent.getParcelableExtra("extra.business"));
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.setTitle(2131166396);
    e = false;
    b = new BusinessAdapter(this);
    b.a(a);
    ScrollToLoadListView localScrollToLoadListView = q();
    localScrollToLoadListView.addFooterView(f(), null, false);
    localScrollToLoadListView.setAdapter(b);
    localScrollToLoadListView.f();
    registerForContextMenu(localScrollToLoadListView);
    if (paramBundle != null) {
      c = paramBundle.getParcelableArrayList("businesses");
    }
    if (c == null)
    {
      d = e();
      if (d.getStatus() == AsyncTask.Status.PENDING) {
        d.b(new ActivityRecents[] { this });
      }
      enableLoading(null);
      return;
    }
    b.a(c);
    q().setEmptyView(a(q(), 2131165758));
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      paramContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      paramView = (YelpBusiness)((AdapterView)paramView).getAdapter().getItem(position);
      bf.a(this, paramContextMenu, paramView);
      paramContextMenu.setHeaderIcon(2130837624);
      paramContextMenu.setHeaderTitle(paramView.getDisplayName());
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    return cp.a(this, paramInt, 2131165303).setPositiveButton(2131166904, new dp(this)).setNegativeButton(2131166185, new do(this)).create();
  }
  
  protected void onPause()
  {
    super.onPause();
    getAppData().t().b();
  }
  
  protected void onResume()
  {
    super.onResume();
    if (c == null)
    {
      d = e();
      if (d.getStatus() == AsyncTask.Status.PENDING) {
        d.b(new ActivityRecents[] { this });
      }
      enableLoading(null);
    }
    for (;;)
    {
      if (e)
      {
        q().setSelection(0);
        e = false;
      }
      return;
      c = AppData.b().i().f().a();
      b.a(c);
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (c != null) {
      paramBundle.putParcelableArrayList("businesses", c);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRecents
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */