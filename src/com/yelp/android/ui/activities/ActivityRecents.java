package com.yelp.android.ui.activities;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView.LayoutParams;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.e;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.n;
import com.yelp.android.database.b;
import com.yelp.android.database.g;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ab;
import com.yelp.android.ui.util.ar;
import com.yelp.android.util.q;
import java.util.ArrayList;

public class ActivityRecents
  extends YelpListActivity
{
  private static final BusinessAdapter.DisplayFeature[] a = { BusinessAdapter.DisplayFeature.ALTERNATE_NAMES, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.ADDRESS, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.DISTANCE, BusinessAdapter.DisplayFeature.BOOKMARK, BusinessAdapter.DisplayFeature.PRICE };
  private BusinessAdapter<YelpBusiness> b;
  private ArrayList<YelpBusiness> c;
  private a d;
  private boolean e;
  
  private void a(YelpBusiness paramYelpBusiness)
  {
    if (c != null)
    {
      String str = paramYelpBusiness.aD();
      int j = c.size();
      int i = 0;
      while (i < j)
      {
        if (((YelpBusiness)c.get(i)).aD().equals(str)) {
          c.set(i, paramYelpBusiness);
        }
        i += 1;
      }
      b.notifyDataSetChanged();
    }
    AppData.b().i().d().a(paramYelpBusiness);
  }
  
  private final View f()
  {
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -2, 3));
    Button localButton = new Button(this);
    localButton.setGravity(17);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    int i = n.e;
    topMargin = i;
    rightMargin = i;
    leftMargin = i;
    bottomMargin = i;
    localButton.setLayoutParams(localLayoutParams);
    localButton.setText(2131165649);
    if (f.a(21)) {
      localButton.setBackground(getResources().getDrawable(2130838661));
    }
    for (;;)
    {
      localButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          showDialog(2131165427);
        }
      });
      localLinearLayout.addView(localButton);
      return localLinearLayout;
      localButton.setBackground(getResources().getDrawable(2130838725));
    }
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
  
  public a b()
  {
    return d;
  }
  
  public a e()
  {
    a locala2 = (a)super.getLastCustomNonConfigurationInstance();
    a locala1 = locala2;
    if (locala2 == null) {
      locala1 = new a();
    }
    return locala1;
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
    super.setTitle(2131166423);
    e = false;
    b = new BusinessAdapter(this);
    b.a(a);
    ScrollToLoadListView localScrollToLoadListView = r();
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
    r().setEmptyView(a(r(), 2131165841));
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      paramContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      paramView = (YelpBusiness)((AdapterView)paramView).getAdapter().getItem(position);
      ab.a(this, paramContextMenu, paramView);
      paramContextMenu.setHeaderIcon(2130837646);
      paramContextMenu.setHeaderTitle(paramView.z());
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    ar.a(this, paramInt, 2131165426).setPositiveButton(2131166857, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        AppData.b().i().d().c();
        ActivityRecents.a(ActivityRecents.this).clear();
        AppData.a(EventIri.RecentClear);
      }
    }).setNegativeButton(2131166235, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    }).create();
  }
  
  protected void onPause()
  {
    super.onPause();
    getAppData().y().b();
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
        r().setSelection(0);
        e = false;
      }
      return;
      c = AppData.b().i().d().a();
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
  
  public static final class a
    extends q<ActivityRecents, Void, ArrayList<YelpBusiness>>
  {
    private ActivityRecents a;
    
    protected ArrayList<YelpBusiness> a(ActivityRecents... paramVarArgs)
    {
      a = paramVarArgs[0];
      return AppData.b().i().d().a();
    }
    
    protected void a(ArrayList<YelpBusiness> paramArrayList)
    {
      ActivityRecents.a(a, paramArrayList);
      ActivityRecents.a(a).a(paramArrayList);
      a.r().setEmptyView(ActivityRecents.a(a, a.r(), 2131165841));
      a.disableLoading();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRecents
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */