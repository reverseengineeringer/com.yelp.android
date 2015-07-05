package com.yelp.android.ui.activities.nearby;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.database.m;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.ui.activities.ei;
import com.yelp.android.ui.activities.ej;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.widgets.WidgetSpan;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class s
{
  private boolean a = Features.nearby_search_suggest.isEnabled();
  private ScrollToLoadListView b;
  private WidgetSpan c;
  private Map<String, Drawable> d;
  private Context e;
  private long f = 0L;
  
  public s(Context paramContext)
  {
    e();
    e = paramContext;
  }
  
  public static List<RichSearchSuggestion> b(List<RichSearchSuggestion> paramList)
  {
    int j;
    for (int i = 0; i < paramList.size(); i = j + 1)
    {
      RichSearchSuggestion localRichSearchSuggestion = (RichSearchSuggestion)paramList.get(i);
      j = i;
      if (localRichSearchSuggestion.getRichSearchSuggestionType() != RichSearchSuggestion.RichSearchSuggestionType.CATEGORY)
      {
        j = i;
        if (localRichSearchSuggestion.getRichSearchSuggestionType() != RichSearchSuggestion.RichSearchSuggestionType.COMMON)
        {
          paramList.remove(i);
          j = i - 1;
        }
      }
    }
    return paramList;
  }
  
  private void c(List<RichSearchSuggestion> paramList)
  {
    Object localObject1 = AppData.b();
    int i = 0;
    Object localObject2;
    if (i < paramList.size())
    {
      localObject2 = ((RichSearchSuggestion)paramList.get(i)).getAlias();
      if ((localObject2 == null) || (!((String)localObject2).contentEquals("MoreCategories"))) {}
    }
    for (i = 1;; i = 0)
    {
      if (i == 0) {
        paramList.add(new RichSearchSuggestion(RichSearchSuggestion.RichSearchSuggestionType.CATEGORY, ((AppData)localObject1).getString(2131166106), "ellipses", "MoreCategories"));
      }
      localObject1 = new ag();
      ((ag)localObject1).a(paramList);
      b();
      i = 0;
      for (;;)
      {
        if (i < paramList.size())
        {
          localObject2 = LayoutInflater.from(e).inflate(2130903335, c, false);
          ((View)localObject2).setTag(new ah((View)localObject2));
          ((ag)localObject1).getView(i, (View)localObject2, b);
          ((View)localObject2).setOnClickListener(new v(this, (RichSearchSuggestion)paramList.get(i)));
          c.addView((View)localObject2);
          i += 1;
          continue;
          i += 1;
          break;
        }
      }
      return;
    }
  }
  
  private void d()
  {
    Object localObject1 = AppData.b();
    Object localObject2 = ((AppData)localObject1).j();
    String[] arrayOfString = ((AppData)localObject1).getResources().getStringArray(2131230721);
    ArrayList localArrayList = new ArrayList(arrayOfString.length);
    int j = arrayOfString.length;
    int i = 0;
    if (i < j)
    {
      Object localObject3 = arrayOfString[i];
      Category localCategory = ((m)localObject2).a((String)localObject3);
      if (localCategory != null) {
        localArrayList.add(new Category(localCategory));
      }
      for (;;)
      {
        i += 1;
        break;
        if ("MoreCategories".equals(localObject3))
        {
          localObject3 = new Category(((AppData)localObject1).getString(2131166106), (String)localObject3, -1);
          ((Category)localObject3).setNumChildren(1);
          localArrayList.add(localObject3);
        }
      }
    }
    b();
    localObject1 = new ei(false, d, Collections.emptyList());
    ((ei)localObject1).a(localArrayList);
    i = 0;
    while (i < localArrayList.size())
    {
      localObject2 = LayoutInflater.from(e).inflate(2130903156, c, false);
      ((View)localObject2).setTag(new ej((View)localObject2));
      ((ei)localObject1).getView(i, (View)localObject2, b);
      ((View)localObject2).setOnClickListener(new u(this, (Category)localArrayList.get(i), null));
      c.addView((View)localObject2);
      i += 1;
    }
  }
  
  private void e()
  {
    Object localObject = AppData.b();
    LayerDrawable localLayerDrawable = (LayerDrawable)((AppData)localObject).getResources().getDrawable(2130837739);
    localObject = ((AppData)localObject).getResources().getStringArray(2131230721);
    d = new HashMap(localLayerDrawable.getNumberOfLayers());
    int i = 0;
    int j = localObject.length;
    while (i < j)
    {
      d.put(localObject[i], localLayerDrawable.getDrawable(i));
      i += 1;
    }
  }
  
  public String a(List<RichSearchSuggestion> paramList)
  {
    if ((paramList != null) && (!paramList.isEmpty())) {
      return StringUtils.a(",", paramList, new t(this));
    }
    return "";
  }
  
  public void a()
  {
    f = System.currentTimeMillis();
  }
  
  public void a(ScrollToLoadListView paramScrollToLoadListView)
  {
    if (c == null) {
      c = ((WidgetSpan)LayoutInflater.from(e).inflate(2130903151, paramScrollToLoadListView, false));
    }
    paramScrollToLoadListView.addHeaderView(c, "HEADER", true);
    b = paramScrollToLoadListView;
  }
  
  public void a(List<RichSearchSuggestion> paramList, String paramString)
  {
    double d1 = (System.currentTimeMillis() - f) / 1000.0D;
    HashMap localHashMap = new HashMap();
    localHashMap.put("request_id", paramString);
    localHashMap.put("location_time", Double.valueOf(d1));
    if ((paramList != null) && (!paramList.isEmpty()) && (a))
    {
      c(paramList);
      localHashMap.put("aliases", a(paramList));
      AppData.a(ViewIri.NearbySuggestSearches, localHashMap);
      return;
    }
    d();
    localHashMap.put("aliases", c());
    AppData.a(ViewIri.NearbyDefaultSearches, localHashMap);
  }
  
  public void b()
  {
    if (c != null) {
      c.removeAllViews();
    }
  }
  
  public String c()
  {
    return TextUtils.join(",", Arrays.asList(AppData.b().getResources().getStringArray(2131230721)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */