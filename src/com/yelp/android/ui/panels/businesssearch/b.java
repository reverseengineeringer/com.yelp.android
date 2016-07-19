package com.yelp.android.ui.panels.businesssearch;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.BusinessSearchResult.SearchActionType;
import com.yelp.android.serializable.PlatformSearchAction;
import com.yelp.android.serializable.SearchAction;
import com.yelp.android.serializable.SearchResultAnnotation;
import com.yelp.android.ui.util.ah;
import com.yelp.android.ui.util.ai;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class b<T extends c>
  extends BusinessAdapter<T>
{
  private final LayoutInflater c;
  private String d;
  private Activity e;
  private boolean f;
  
  public b(Activity paramActivity)
  {
    super(paramActivity);
    c = LayoutInflater.from(paramActivity);
    e = paramActivity;
  }
  
  public b(Activity paramActivity, Bundle paramBundle)
  {
    super(paramActivity, paramBundle);
    c = LayoutInflater.from(paramActivity);
    e = paramActivity;
  }
  
  private void a(View paramView)
  {
    if (!(paramView instanceof ViewStub))
    {
      LinearLayout localLinearLayout1 = (LinearLayout)paramView.findViewById(2131690042);
      LinearLayout localLinearLayout2 = (LinearLayout)paramView.findViewById(2131690890);
      localLinearLayout1.removeAllViews();
      localLinearLayout2.removeAllViews();
      paramView.setVisibility(8);
    }
  }
  
  private void a(View paramView, BusinessSearchResult paramBusinessSearchResult)
  {
    View localView = paramView.findViewById(2131690578);
    paramView = paramView.findViewById(2131690594);
    if (f)
    {
      b(localView, paramBusinessSearchResult);
      a(paramView);
      return;
    }
    b(paramView, paramBusinessSearchResult);
    a(localView);
  }
  
  private void a(View paramView, List<SearchResultAnnotation> paramList)
  {
    paramView = (LinearLayout)paramView.findViewById(2131690593);
    paramView.removeAllViews();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      SearchResultAnnotation localSearchResultAnnotation = (SearchResultAnnotation)paramList.next();
      ViewGroup localViewGroup = (ViewGroup)c.inflate(2130903458, paramView, false);
      Object localObject = (TextView)localViewGroup.findViewById(2131690776);
      ((TextView)localObject).setText(Html.fromHtml(localSearchResultAnnotation.h()));
      ((TextView)localObject).setTextColor(Color.rgb(localSearchResultAnnotation.e(), localSearchResultAnnotation.c(), localSearchResultAnnotation.d()));
      localObject = (ImageView)localViewGroup.findViewById(2131690775);
      if (!ar.a(b, (ImageView)localObject, localSearchResultAnnotation.g())) {
        t.a(e).a(localSearchResultAnnotation.f()).a((ImageView)localObject);
      }
      paramView.addView(localViewGroup);
    }
  }
  
  private void b(View paramView, BusinessSearchResult paramBusinessSearchResult)
  {
    View localView = paramView;
    if ((paramView instanceof ViewStub)) {
      localView = ((ViewStub)paramView).inflate();
    }
    paramView = (LinearLayout)localView.findViewById(2131690042);
    LinearLayout localLinearLayout = (LinearLayout)localView.findViewById(2131690890);
    paramView.removeAllViews();
    localLinearLayout.removeAllViews();
    localView.setVisibility(0);
    Iterator localIterator = paramBusinessSearchResult.c().iterator();
    int i = 0;
    SearchAction localSearchAction;
    Object localObject;
    if (localIterator.hasNext())
    {
      localSearchAction = (SearchAction)localIterator.next();
      if ((localSearchAction.a() != BusinessSearchResult.SearchActionType.Platform) || (i != 0) || (!f)) {
        break label240;
      }
      localObject = ((PlatformSearchAction)localSearchAction).q();
      if (((List)localObject).isEmpty()) {
        break label240;
      }
      ai.b(c, localView.getContext(), localLinearLayout, (List)localObject);
      i = 1;
    }
    label240:
    for (;;)
    {
      localObject = paramBusinessSearchResult.d();
      if ((!((ArrayList)localObject).isEmpty()) && (i == 0)) {
        ai.a(c, localView.getContext(), localLinearLayout, (List)localObject);
      }
      localObject = ah.a(paramView, localSearchAction, c, b);
      paramView.addView((View)localObject);
      if (!localSearchAction.b()) {
        ((Button)localObject).setOnClickListener(new b.1(this, localSearchAction, paramBusinessSearchResult));
      }
      break;
      return;
    }
  }
  
  public void a(String paramString)
  {
    d = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  protected int d()
  {
    return 2130903368;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    paramViewGroup = ((c)getItem(paramInt)).e();
    a(paramView, paramViewGroup.h());
    a(paramView, paramViewGroup);
    paramViewGroup = paramViewGroup.c().iterator();
    while (paramViewGroup.hasNext()) {
      if (((SearchAction)paramViewGroup.next()).a() == BusinessSearchResult.SearchActionType.RequestAQuote) {
        AppData.a(EventIri.SearchRequestAQuoteShown);
      }
    }
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */