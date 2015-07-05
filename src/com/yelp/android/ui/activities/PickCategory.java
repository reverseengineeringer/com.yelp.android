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
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.j;
import com.yelp.android.b;
import com.yelp.android.database.m;
import com.yelp.android.database.q;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.util.PlatformQualifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PickCategory
  extends YelpListActivity
{
  q a;
  j b;
  private Category c;
  private ei d;
  private ei e;
  private bs f;
  private boolean g;
  private boolean h;
  private final AdapterView.OnItemClickListener i = new fl(this);
  
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
    m localm = AppData.b().j();
    Object localObject1 = getIntent().getParcelableArrayListExtra("selected_categories");
    if (localObject1 == null) {
      localObject1 = Collections.emptyList();
    }
    for (;;)
    {
      Object localObject2 = (LayerDrawable)getResources().getDrawable(2130837738);
      Object localObject3 = getResources().getStringArray(2131230720);
      HashMap localHashMap = new HashMap(((LayerDrawable)localObject2).getNumberOfLayers());
      int k = localObject3.length;
      int j = 0;
      while (j < k)
      {
        localHashMap.put(localObject3[j], ((LayerDrawable)localObject2).getDrawable(j));
        j += 1;
      }
      d = new ei(true, localHashMap, (List)localObject1);
      localObject3 = getTheme().obtainStyledAttributes(b.CategoryPicker);
      localObject1 = "";
      localObject2 = "";
      if (paramCategory != null)
      {
        localObject1 = String.format(((TypedArray)localObject3).getString(0), new Object[] { paramCategory.getName() });
        localObject2 = paramCategory.getAlias();
        j = paramCategory.getDatabaseId();
      }
      for (paramCategory = (Category)localObject2;; paramCategory = (Category)localObject2)
      {
        ((TypedArray)localObject3).recycle();
        localObject2 = localm.a(j);
        if ((!TextUtils.isEmpty((CharSequence)localObject1)) || (!TextUtils.isEmpty(paramCategory)))
        {
          paramCategory = new Category((String)localObject1, paramCategory, -1);
          paramCategory.setNumChildren(0);
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
      j = 2131165930;
    }
    for (;;)
    {
      return new Category(getString(j), paramString, -1);
      if ("CheckInOffer".equals(paramString)) {
        j = 2131165489;
      } else if ("Everything".equals(paramString)) {
        j = 2131165475;
      } else if ("ActiveDeal".equals(paramString)) {
        j = 2131165681;
      } else if ("PlatformDelivery".equals(paramString)) {
        j = 2131165693;
      }
    }
  }
  
  private void c()
  {
    f = new bs();
    q().setItemsCanFocus(true);
    if ((c == null) && (g) && (PlatformQualifier.SensisYellowPages.qualifies(this)))
    {
      View localView = getLayoutInflater().inflate(2130903279, q(), false);
      ((TextView)localView.findViewById(2131493769)).setText(getString(2131166550));
      q().addFooterView(localView);
    }
    f();
  }
  
  private void f()
  {
    int j = 0;
    if ((c == null) && (g))
    {
      g();
      f.a(2131166348, bw.a(getString(2131166348), e).a(2130772319).a(2131493398, 0, ao.a(this, 15)).a());
    }
    for (Object localObject = getString(2131165360);; localObject = "")
    {
      a(c);
      f.a(2131165360, bw.a((CharSequence)localObject, d).a(2130772319).a(2131493398, j, ao.a(this, 15)).a());
      localObject = q();
      ((ScrollToLoadListView)localObject).setSelector(17170445);
      ((ScrollToLoadListView)localObject).setBackgroundDrawable(null);
      getWindow().setBackgroundDrawable(new ColorDrawable(getResources().getColor(2131362036)));
      ((ScrollToLoadListView)localObject).setAdapter(f);
      ((ScrollToLoadListView)localObject).setOnItemClickListener(i);
      ((ScrollToLoadListView)localObject).f();
      return;
      e = null;
      j = ao.a(this, 15);
    }
  }
  
  private void g()
  {
    LayerDrawable localLayerDrawable1 = (LayerDrawable)getResources().getDrawable(2130837740);
    String[] arrayOfString1 = getResources().getStringArray(2131230723);
    LayerDrawable localLayerDrawable2 = (LayerDrawable)getResources().getDrawable(2130837741);
    String[] arrayOfString2 = getResources().getStringArray(2131230724);
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
    e = new ei(false, localHashMap, Collections.emptyList());
  }
  
  private void h()
  {
    if (e == null) {
      return;
    }
    e.clear();
    m localm = AppData.b().j();
    String[] arrayOfString = getResources().getStringArray(2131230722);
    ArrayList localArrayList = new ArrayList(arrayOfString.length);
    int k = arrayOfString.length;
    int j = 0;
    if (j < k)
    {
      String str = arrayOfString[j];
      Category localCategory = localm.a(str);
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
    return ViewIri.Nearby;
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
    getWindow().setBackgroundDrawableResource(2131361888);
    a = getAppData().i();
    b = getAppData().f();
    if (c != null) {
      setTitle(c.getName());
    }
    c();
  }
  
  protected void onResume()
  {
    super.onResume();
    h();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.PickCategory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */