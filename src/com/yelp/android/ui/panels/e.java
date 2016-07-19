package com.yelp.android.ui.panels;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.LinearLayout;
import com.google.android.gms.maps.model.c;
import com.yelp.android.appdata.Features;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.BusinessSearchResult.SearchActionType;
import com.yelp.android.serializable.PlatformSearchAction;
import com.yelp.android.serializable.SearchAction;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.search.SearchBusinessesByMap;
import com.yelp.android.ui.map.h;
import com.yelp.android.ui.panels.businesssearch.a;
import com.yelp.android.ui.util.ah;
import com.yelp.android.ui.util.ai;
import java.util.Iterator;
import java.util.List;

public class e
  extends d
{
  private LinearLayout a;
  private BusinessSearchResult b;
  private long c;
  private final c d;
  private final SearchBusinessesByMap e;
  private final int f;
  private String g;
  
  public e(SearchBusinessesByMap paramSearchBusinessesByMap, c paramc, a parama)
  {
    super(paramSearchBusinessesByMap);
    e = paramSearchBusinessesByMap;
    d = paramc;
    f = ViewConfiguration.get(paramSearchBusinessesByMap).getScaledTouchSlop();
    if ((parama instanceof BusinessSearchResult)) {
      b = ((BusinessSearchResult)parama);
    }
  }
  
  private void a(LinearLayout paramLinearLayout)
  {
    LayoutInflater localLayoutInflater;
    Object localObject1;
    Object localObject2;
    if (b != null)
    {
      localLayoutInflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
      Iterator localIterator = b.c().iterator();
      int i = 0;
      if (localIterator.hasNext())
      {
        localObject1 = (SearchAction)localIterator.next();
        if ((((SearchAction)localObject1).a() != BusinessSearchResult.SearchActionType.Platform) || (i != 0) || (!Features.platform_attributes.isEnabled())) {
          break label184;
        }
        localObject2 = ((PlatformSearchAction)localObject1).q();
        if (((List)localObject2).isEmpty()) {
          break label184;
        }
        ai.b(localLayoutInflater, getContext(), paramLinearLayout, (List)localObject2);
        i = 1;
      }
    }
    label184:
    for (;;)
    {
      localObject2 = ah.a(a, (SearchAction)localObject1, localLayoutInflater, getContext());
      a.addView((View)localObject2);
      if (!((SearchAction)localObject1).b())
      {
        localObject1 = new e.3(this, (SearchAction)localObject1);
        ((h)localObject1).a(d);
        ((Button)localObject2).setOnTouchListener((View.OnTouchListener)localObject1);
      }
      break;
      return;
    }
  }
  
  public void a()
  {
    super.a();
    View localView = findViewById(2131690594);
    if ((localView instanceof ViewStub)) {
      localView = ((ViewStub)localView).inflate();
    }
    for (;;)
    {
      LinearLayout localLinearLayout = (LinearLayout)localView.findViewById(2131690890);
      a = ((LinearLayout)localView.findViewById(2131690042));
      localLinearLayout.removeAllViews();
      a.removeAllViews();
      a(localLinearLayout);
      localView = findViewById(2131690718);
      localView.setOnClickListener(new e.1(this));
      localView.setOnLongClickListener(new e.2(this));
      return;
    }
  }
  
  protected void a(YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    super.a(paramYelpBusiness, paramBoolean);
    if (b != null) {
      a.setVisibility(0);
    }
  }
  
  public BusinessSearchResult getBusinessSearchResult()
  {
    return b;
  }
  
  public void setSearchRequestId(String paramString)
  {
    g = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */