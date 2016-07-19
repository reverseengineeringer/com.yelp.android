package com.yelp.android.ui.activities.search;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.SearchSeparator;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.panels.businesssearch.b;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class f
  extends BaseAdapter
  implements com.yelp.android.ui.util.g
{
  private static final Integer a = Integer.valueOf(-2);
  private static final Integer b = Integer.valueOf(-1);
  private static final Integer c = Integer.valueOf(0);
  private static final Integer d = Integer.valueOf(1);
  private static final Integer e = Integer.valueOf(2);
  private final b<BusinessSearchResult> f;
  private List<SearchSeparator> g = new ArrayList();
  private String h = "";
  private String i = "";
  
  public f(Activity paramActivity)
  {
    f = new b(paramActivity);
  }
  
  public f(Activity paramActivity, Bundle paramBundle)
  {
    f = new b(paramActivity, paramBundle);
  }
  
  private View a(ViewGroup paramViewGroup, View paramView)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903393, paramViewGroup, false);
      ((ImageView)localView.findViewById(2131690646)).setImageResource(2130838055);
      localView.findViewById(2131690648).setVisibility(8);
    }
    ((TextView)localView.findViewById(2131690647)).setText(AppData.b().getString(2131166259, new Object[] { h, i }));
    return localView;
  }
  
  private View a(ViewGroup paramViewGroup, View paramView, String paramString)
  {
    TextView localTextView = (TextView)paramView;
    paramView = localTextView;
    if (localTextView == null)
    {
      paramView = new TextView(paramViewGroup.getContext(), null, 2130772428);
      paramView.setBackgroundResource(2130838595);
    }
    paramView.setText(paramString);
    return paramView;
  }
  
  private boolean a(SearchSeparator paramSearchSeparator)
  {
    int k = f.e();
    int j;
    if (f.getCount() + k > paramSearchSeparator.a())
    {
      j = 1;
      if (k > paramSearchSeparator.a()) {
        break label51;
      }
    }
    label51:
    for (k = 1;; k = 0)
    {
      if ((j == 0) || (k == 0)) {
        break label56;
      }
      return true;
      j = 0;
      break;
    }
    label56:
    return false;
  }
  
  private com.yelp.android.g.g<Object, Integer> b(int paramInt)
  {
    if (g.isEmpty()) {
      return new com.yelp.android.g.g(f.getItem(paramInt), Integer.valueOf(paramInt));
    }
    int n = f.e();
    Iterator localIterator = g.iterator();
    int k = 0;
    int j = 0;
    SearchSeparator localSearchSeparator;
    while (localIterator.hasNext())
    {
      localSearchSeparator = (SearchSeparator)localIterator.next();
      if (a(localSearchSeparator))
      {
        if (localSearchSeparator.a() != 0) {
          break label208;
        }
        j += 1;
        if (paramInt == 0) {
          return new com.yelp.android.g.g(a, b);
        }
        k = 1;
      }
    }
    label205:
    label206:
    label208:
    for (;;)
    {
      int m;
      if (k != 0)
      {
        m = 1;
        m = n + paramInt - m;
        if (m <= localSearchSeparator.a()) {
          break label205;
        }
        j += 1;
      }
      for (;;)
      {
        if (m != localSearchSeparator.a()) {
          break label206;
        }
        return new com.yelp.android.g.g(localSearchSeparator.b(), b);
        m = 0;
        break;
        paramInt -= j;
        return new com.yelp.android.g.g(f.getItem(paramInt), Integer.valueOf(paramInt));
      }
      break;
    }
  }
  
  public void a(int paramInt)
  {
    f.b(paramInt);
  }
  
  public void a(Bundle paramBundle)
  {
    f.a(paramBundle);
  }
  
  public void a(SearchRequest.SearchResponse paramSearchResponse)
  {
    List localList = paramSearchResponse.m();
    g.clear();
    if (localList != null)
    {
      g.addAll(localList);
      Collections.sort(g, new f.1(this));
    }
    f.a(paramSearchResponse.b());
    f.a(paramSearchResponse.i());
    notifyDataSetChanged();
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (StringUtils.d(paramString1)) {}
    for (h = ""; StringUtils.d(paramString2); h = paramString1)
    {
      i = AppData.b().getString(2131165745);
      return;
    }
    i = paramString2;
  }
  
  public void a(Collection<BusinessAdapter.DisplayFeature> paramCollection)
  {
    f.c(paramCollection);
  }
  
  public void a(boolean paramBoolean)
  {
    f.a(paramBoolean);
  }
  
  public void a(BusinessAdapter.DisplayFeature... paramVarArgs)
  {
    f.a(paramVarArgs);
  }
  
  public void b(BusinessAdapter.DisplayFeature... paramVarArgs)
  {
    f.b(paramVarArgs);
  }
  
  public void clear()
  {
    g.clear();
    f.clear();
    notifyDataSetChanged();
  }
  
  public int getCount()
  {
    int j = f.getCount();
    Iterator localIterator = g.iterator();
    if (localIterator.hasNext())
    {
      SearchSeparator localSearchSeparator = (SearchSeparator)localIterator.next();
      if (!a(localSearchSeparator)) {
        break label70;
      }
      int k = j;
      if (localSearchSeparator.a() == 0) {
        k = j + 1;
      }
      j = k + 1;
    }
    label70:
    for (;;)
    {
      break;
      return j;
    }
  }
  
  public Object getItem(int paramInt)
  {
    return ba;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    com.yelp.android.g.g localg = b(paramInt);
    if (a.equals(a)) {
      return c.intValue();
    }
    if ((a instanceof String)) {
      return d.intValue();
    }
    return f.getItemViewType(((Integer)b).intValue()) + e.intValue();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    com.yelp.android.g.g localg = b(paramInt);
    paramInt = getItemViewType(paramInt);
    if (paramInt == c.intValue()) {
      return a(paramViewGroup, paramView);
    }
    if (paramInt == d.intValue()) {
      return a(paramViewGroup, paramView, (String)a);
    }
    return f.getView(((Integer)b).intValue(), paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return e.intValue() + f.getViewTypeCount();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */