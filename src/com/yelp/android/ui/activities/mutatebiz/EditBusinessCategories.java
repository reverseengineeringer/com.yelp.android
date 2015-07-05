package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ei;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EditBusinessCategories
  extends YelpListActivity
{
  private YelpBusiness a;
  private View b;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, ArrayList<Category> paramArrayList)
  {
    paramContext = new Intent(paramContext, EditBusinessCategories.class);
    paramContext.putExtra("extra.categories", paramArrayList);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  private void a(EventIri paramEventIri, String paramString)
  {
    if ((a == null) && (TextUtils.isEmpty(paramString)))
    {
      AppData.a(paramEventIri);
      return;
    }
    HashMap localHashMap = new HashMap();
    if (!TextUtils.isEmpty(paramString)) {
      localHashMap.put("category_id", paramString);
    }
    if (a != null) {
      localHashMap.put("business_id", a.getId());
    }
    AppData.a(paramEventIri, localHashMap);
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    List localList = c();
    if (paramView != b) {}
    for (paramListView = (Category)paramListView.getItemAtPosition(paramInt);; paramListView = null)
    {
      paramView = PickCategory.a(this, null, localList);
      paramView.putExtra("extra.categories", paramListView);
      startActivityForResult(paramView, 3);
      return;
    }
  }
  
  List<Category> c()
  {
    ArrayList localArrayList = getIntent().getParcelableArrayListExtra("extra.categories");
    Object localObject = localArrayList;
    if (localArrayList == null) {
      localObject = Collections.emptyList();
    }
    return (List<Category>)localObject;
  }
  
  void f()
  {
    b = getLayoutInflater().inflate(2130903194, q(), false);
    q().addFooterView(b, null, true);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessEditCategory;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ArrayList localArrayList = new ArrayList(c());
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    Object localObject;
    if (paramInt2 == -1)
    {
      localObject = PickCategory.a(paramIntent);
      Category localCategory = (Category)paramIntent.getParcelableExtra("extra.categories");
      if (localCategory != null)
      {
        localArrayList.set(localArrayList.indexOf(localCategory), localObject);
        a(EventIri.BusinessCategoriesRemoved, String.valueOf(localCategory.getDatabaseId()));
        label97:
        getIntent().putExtra("extra.categories", localArrayList);
        a(EventIri.BusinessCategoriesAdded, String.valueOf(((Category)localObject).getDatabaseId()));
      }
    }
    else
    {
      if (!localArrayList.isEmpty()) {
        break label184;
      }
      finish();
    }
    for (;;)
    {
      localObject = new ei(false);
      ((ei)localObject).a(localArrayList);
      q().setAdapter((ListAdapter)localObject);
      break;
      localArrayList.remove(localObject);
      localArrayList.add(localObject);
      break label97;
      label184:
      if ((localArrayList.size() < 3) && (q().getFooterViewsCount() == 0)) {
        f();
      } else if (localArrayList.size() >= 3) {
        q().removeFooterView(b);
      }
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
    a(EventIri.BusinessCategoriesCanceled, null);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    registerForContextMenu(q());
    a = ((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
    paramBundle = c();
    Object localObject = getLayoutInflater().inflate(2130903195, q(), false);
    q().addHeaderView((View)localObject, null, false);
    localObject = new ei(false);
    ((ei)localObject).a(paramBundle);
    if (((ei)localObject).getCount() < 3) {
      f();
    }
    q().setAdapter((ListAdapter)localObject);
    q().f();
    if (paramBundle.isEmpty()) {
      q().performItemClick(b, q().getCount() - 1, -1L);
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    int i = position;
    if ((i >= q().getHeaderViewsCount()) && (i < q().getCount() - q().getFooterViewsCount()))
    {
      paramView = (Category)q().getItemAtPosition(i);
      getMenuInflater().inflate(2131755014, paramContextMenu);
      paramContextMenu.setHeaderTitle(paramView.getName());
      paramContextMenu.findItem(2131494131).setOnMenuItemClickListener(new s(this, paramView));
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755019, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      a(EventIri.BusinessCategoriesSaved, null);
      setResult(-1, getIntent());
      finish();
      return true;
    }
    if (paramMenuItem.getItemId() == 16908332) {
      a(EventIri.BusinessCategoriesCanceled, null);
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditBusinessCategories
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */