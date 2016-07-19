package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.a;
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
    paramContext.putExtra("extra.category", paramArrayList);
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
      localHashMap.put("business_id", a.aD());
    }
    AppData.a(paramEventIri, localHashMap);
  }
  
  protected void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    List localList = b();
    if (paramView != b) {}
    for (paramListView = (Category)paramListView.getItemAtPosition(paramInt);; paramListView = null)
    {
      paramView = PickCategory.a(this, null, localList);
      paramView.putExtra("extra.category", paramListView);
      startActivityForResult(paramView, 3);
      return;
    }
  }
  
  List<Category> b()
  {
    ArrayList localArrayList = getIntent().getParcelableArrayListExtra("extra.category");
    Object localObject = localArrayList;
    if (localArrayList == null) {
      localObject = Collections.emptyList();
    }
    return (List<Category>)localObject;
  }
  
  void f()
  {
    b = getLayoutInflater().inflate(2130903217, r(), false);
    r().addFooterView(b, null, true);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessEditCategory;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ArrayList localArrayList = new ArrayList(b());
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
      Category localCategory = (Category)paramIntent.getParcelableExtra("extra.category");
      if (localCategory != null)
      {
        localArrayList.set(localArrayList.indexOf(localCategory), localObject);
        a(EventIri.BusinessCategoriesRemoved, String.valueOf(localCategory.e()));
        label97:
        getIntent().putExtra("extra.category", localArrayList);
        a(EventIri.BusinessCategoriesAdded, String.valueOf(((Category)localObject).e()));
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
      localObject = new a(false);
      ((a)localObject).a(localArrayList);
      r().setAdapter((ListAdapter)localObject);
      break;
      localArrayList.remove(localObject);
      localArrayList.add(localObject);
      break label97;
      label184:
      if ((localArrayList.size() < 3) && (r().getFooterViewsCount() == 0)) {
        f();
      } else if (localArrayList.size() >= 3) {
        r().removeFooterView(b);
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
    r().setBackgroundColor(getResources().getColor(2131624261));
    registerForContextMenu(r());
    a = ((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
    paramBundle = b();
    Object localObject = getLayoutInflater().inflate(2130903218, r(), false);
    r().addHeaderView((View)localObject, null, false);
    localObject = new a(false);
    ((a)localObject).a(paramBundle);
    if (((a)localObject).getCount() < 3) {
      f();
    }
    r().setAdapter((ListAdapter)localObject);
    r().f();
    if (paramBundle.isEmpty()) {
      r().performItemClick(b, r().getCount() - 1, -1L);
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, final View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    int i = position;
    if ((i >= r().getHeaderViewsCount()) && (i < r().getCount() - r().getFooterViewsCount()))
    {
      paramView = (Category)r().getItemAtPosition(i);
      getMenuInflater().inflate(2131755016, paramContextMenu);
      paramContextMenu.setHeaderTitle(paramView.a());
      paramContextMenu.findItem(2131691005).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener()
      {
        public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
        {
          r().setAdapter(null);
          if (r().getFooterViewsCount() == 0) {
            f();
          }
          paramAnonymousMenuItem = getIntent().getParcelableArrayListExtra("extra.category");
          paramAnonymousMenuItem.remove(paramView);
          a locala = new a(false);
          locala.a(paramAnonymousMenuItem);
          r().setAdapter(locala);
          EditBusinessCategories.a(EditBusinessCategories.this, EventIri.BusinessCategoriesRemoved, String.valueOf(paramView.e()));
          return true;
        }
      });
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755021, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131691015)
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