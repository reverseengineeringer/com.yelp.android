package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.d;
import com.yelp.android.appdata.n;
import com.yelp.android.b.a;
import com.yelp.android.database.e;
import com.yelp.android.database.g;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.util.PlatformQualifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PickCategory
  extends YelpListActivity
{
  g a;
  d b;
  private Category c;
  private a d;
  private a e;
  private aj f;
  private boolean g;
  private boolean h;
  private final AdapterView.OnItemClickListener i = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = paramAnonymousAdapterView.getAdapter().getItem(paramAnonymousInt);
      if ((paramAnonymousAdapterView instanceof Category))
      {
        paramAnonymousView = (Category)paramAnonymousAdapterView;
        if (paramAnonymousView.f() > 0)
        {
          AppData.a(EventIri.NearbyMoreCategoriesCategory, "category", paramAnonymousView.d());
          paramAnonymousAdapterView = new Intent(getIntent());
          paramAnonymousAdapterView.putExtra("category", paramAnonymousView);
          startActivityForResult(paramAnonymousAdapterView, 101);
        }
      }
      else
      {
        return;
      }
      paramAnonymousAdapterView = paramAnonymousView;
      if (TextUtils.isEmpty(paramAnonymousView.d())) {
        paramAnonymousAdapterView = null;
      }
      if (PickCategory.a(PickCategory.this))
      {
        AppData.a(EventIri.NearbyMoreCategoriesCategory, "category", paramAnonymousAdapterView.d());
        startActivity(ActivityNearby.a(PickCategory.this, paramAnonymousAdapterView.d(), paramAnonymousAdapterView));
        return;
      }
      paramAnonymousView = new Intent(getIntent());
      paramAnonymousView.putExtra("category", paramAnonymousAdapterView);
      setResult(-1, paramAnonymousView);
      finish();
    }
  };
  
  public static Intent a(Context paramContext, Category paramCategory, List<Category> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    Intent localIntent = new Intent(paramContext, PickCategory.class);
    localIntent.putExtra("category", paramCategory);
    if ((paramList instanceof ArrayList)) {
      paramContext = (ArrayList)paramList;
    }
    for (;;)
    {
      localIntent.putExtra("selected_categories", paramContext);
      localIntent.putExtra("show_popular", paramBoolean1);
      localIntent.putExtra("search_on_complete", paramBoolean2);
      return localIntent;
      if ((paramList != null) && (!paramList.isEmpty())) {
        paramContext = new ArrayList(paramList);
      } else {
        paramContext = null;
      }
    }
  }
  
  public static Category a(Intent paramIntent)
  {
    return (Category)paramIntent.getParcelableExtra("category");
  }
  
  private void a(Category paramCategory)
  {
    e locale = AppData.b().j();
    Object localObject1 = getIntent().getParcelableArrayListExtra("selected_categories");
    if (localObject1 == null) {
      localObject1 = Collections.emptyList();
    }
    for (;;)
    {
      Object localObject2 = (LayerDrawable)getResources().getDrawable(2130837817);
      Object localObject3 = getResources().getStringArray(2131558400);
      HashMap localHashMap = new HashMap(((LayerDrawable)localObject2).getNumberOfLayers());
      int k = localObject3.length;
      int j = 0;
      while (j < k)
      {
        localHashMap.put(localObject3[j], ((LayerDrawable)localObject2).getDrawable(j));
        j += 1;
      }
      d = new a(true, localHashMap, (List)localObject1);
      localObject3 = getTheme().obtainStyledAttributes(b.a.CategoryPicker);
      localObject1 = "";
      localObject2 = "";
      if (paramCategory != null)
      {
        localObject1 = String.format(((TypedArray)localObject3).getString(0), new Object[] { paramCategory.a() });
        localObject2 = paramCategory.d();
        j = paramCategory.e();
      }
      for (paramCategory = (Category)localObject2;; paramCategory = (Category)localObject2)
      {
        ((TypedArray)localObject3).recycle();
        localObject2 = locale.a(j);
        if ((!TextUtils.isEmpty((CharSequence)localObject1)) || (!TextUtils.isEmpty(paramCategory)))
        {
          paramCategory = new Category((String)localObject1, paramCategory, -1);
          paramCategory.a(0);
          ((List)localObject2).add(0, paramCategory);
        }
        d.a((List)localObject2);
        return;
        j = -1;
      }
    }
  }
  
  private boolean a(String paramString)
  {
    LocaleSettings localLocaleSettings = AppData.b().g();
    return ("NewBusiness".equals(paramString)) || ("CheckInOffer".equals(paramString)) || ("Everything".equals(paramString)) || ("PlatformDelivery".equals(paramString)) || (("ActiveDeal".equals(paramString)) && (localLocaleSettings.f()));
  }
  
  private Category b(String paramString)
  {
    int j = 0;
    if ("NewBusiness".equals(paramString)) {
      j = 2131165995;
    }
    for (;;)
    {
      return new Category(getString(j), paramString, -1);
      if ("CheckInOffer".equals(paramString)) {
        j = 2131165617;
      } else if ("Everything".equals(paramString)) {
        j = 2131165605;
      } else if ("ActiveDeal".equals(paramString)) {
        j = 2131165756;
      } else if ("PlatformDelivery".equals(paramString)) {
        j = 2131165771;
      }
    }
  }
  
  private void b()
  {
    f = new aj();
    r().setItemsCanFocus(true);
    if ((c == null) && (g) && (PlatformQualifier.SensisYellowPages.qualifies(this)))
    {
      View localView = getLayoutInflater().inflate(2130903371, r(), false);
      ((TextView)localView.findViewById(2131690598)).setText(getString(2131166550));
      r().addFooterView(localView);
    }
    f();
  }
  
  private void f()
  {
    int j = 0;
    if ((c == null) && (g))
    {
      g();
      f.a(2131166370, aj.c.a(getString(2131166370), e).a(2130772429).a(2131690093, 0, n.a(15)).b());
    }
    for (Object localObject = getString(2131165485);; localObject = "")
    {
      a(c);
      f.a(2131165485, aj.c.a((CharSequence)localObject, d).a(2130772429).a(2131690093, j, n.a(15)).b());
      localObject = r();
      ((ScrollToLoadListView)localObject).setSelector(17170445);
      ((ScrollToLoadListView)localObject).setBackgroundDrawable(null);
      getWindow().setBackgroundDrawable(new ColorDrawable(getResources().getColor(2131624261)));
      ((ScrollToLoadListView)localObject).setAdapter(f);
      ((ScrollToLoadListView)localObject).setOnItemClickListener(i);
      ((ScrollToLoadListView)localObject).f();
      return;
      e = null;
      j = n.a(15);
    }
  }
  
  private void g()
  {
    LayerDrawable localLayerDrawable1 = (LayerDrawable)getResources().getDrawable(2130837818);
    String[] arrayOfString1 = getResources().getStringArray(2131558403);
    LayerDrawable localLayerDrawable2 = (LayerDrawable)getResources().getDrawable(2130837819);
    String[] arrayOfString2 = getResources().getStringArray(2131558404);
    HashMap localHashMap = new HashMap(localLayerDrawable1.getNumberOfLayers() + localLayerDrawable2.getNumberOfLayers());
    int k = arrayOfString1.length;
    int j = 0;
    while (j < k)
    {
      localHashMap.put(arrayOfString1[j], localLayerDrawable1.getDrawable(j));
      j += 1;
    }
    k = arrayOfString2.length;
    j = 0;
    while (j < k)
    {
      localHashMap.put(arrayOfString2[j], localLayerDrawable2.getDrawable(j));
      j += 1;
    }
    e = new a(false, localHashMap, Collections.emptyList());
  }
  
  private void i()
  {
    if (e == null) {
      return;
    }
    e.clear();
    e locale = AppData.b().j();
    String[] arrayOfString = getResources().getStringArray(2131558402);
    ArrayList localArrayList = new ArrayList(arrayOfString.length);
    int k = arrayOfString.length;
    int j = 0;
    if (j < k)
    {
      String str = arrayOfString[j];
      Category localCategory = locale.a(str);
      if ((localCategory == null) && (a(str))) {
        localArrayList.add(b(str));
      }
      for (;;)
      {
        j += 1;
        break;
        if (localCategory != null) {
          localArrayList.add(new Category(localCategory));
        }
      }
    }
    e.a(localArrayList);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.NearbyMoreCategories;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        return;
      } while (paramInt2 != -1);
      setResult(-1, paramIntent);
      finish();
      return;
    } while (paramInt2 != -1);
    if (f != null) {
      f.clear();
    }
    f();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = ((Category)getIntent().getParcelableExtra("category"));
    g = getIntent().getBooleanExtra("show_popular", false);
    h = getIntent().getBooleanExtra("search_on_complete", false);
    getWindow().setBackgroundDrawableResource(2131624089);
    a = getAppData().i();
    b = getAppData().f();
    if (c != null) {
      setTitle(c.a());
    }
    b();
  }
  
  protected void onResume()
  {
    super.onResume();
    i();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.PickCategory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */