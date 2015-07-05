package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.Html;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.j;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.SearchAction;
import com.yelp.android.serializable.SearchResultAnnotation;
import com.yelp.android.ui.util.cp;
import java.util.Iterator;
import java.util.List;

public class g<T extends i>
  extends BusinessAdapter<T>
{
  private final LayoutInflater c;
  
  public g(Context paramContext)
  {
    super(paramContext);
    c = LayoutInflater.from(paramContext);
  }
  
  public g(Context paramContext, Bundle paramBundle)
  {
    super(paramContext, paramBundle);
    c = LayoutInflater.from(paramContext);
  }
  
  private int a(int[] paramArrayOfInt)
  {
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length < 3)) {
      return -1;
    }
    return Color.rgb(paramArrayOfInt[0], paramArrayOfInt[1], paramArrayOfInt[2]);
  }
  
  private GradientDrawable a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = b.getResources().getDimensionPixelSize(2131427383);
    float f = b.getResources().getDimension(2131427435);
    GradientDrawable localGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[] { paramInt2, paramInt3 });
    localGradientDrawable.setShape(0);
    localGradientDrawable.setCornerRadius(f);
    localGradientDrawable.setStroke(i, paramInt1);
    return localGradientDrawable;
  }
  
  private View a(ViewGroup paramViewGroup, SearchAction paramSearchAction)
  {
    paramViewGroup = (Button)c.inflate(2130903150, paramViewGroup, false);
    int i = a(paramSearchAction.getDefaultColorTop());
    int j = a(paramSearchAction.getDefaultColorBottom());
    int k = a(paramSearchAction.getSelectedColorTop());
    int m = a(paramSearchAction.getSelectedColorBottom());
    int n = a(paramSearchAction.getBorderColor());
    GradientDrawable localGradientDrawable1 = a(n, i, j);
    GradientDrawable localGradientDrawable2 = a(n, k, m);
    StateListDrawable localStateListDrawable = new StateListDrawable();
    localStateListDrawable.addState(new int[] { 16842919 }, localGradientDrawable2);
    localStateListDrawable.addState(StateSet.WILD_CARD, localGradientDrawable1);
    paramViewGroup.setTextColor(a(paramSearchAction.getTextColor()));
    paramViewGroup.setText(paramSearchAction.getText());
    paramViewGroup.setBackgroundDrawable(localStateListDrawable);
    return paramViewGroup;
  }
  
  private void a(View paramView, BusinessSearchResult paramBusinessSearchResult)
  {
    paramView = (LinearLayout)paramView.findViewById(2131494019);
    paramView.removeAllViews();
    Iterator localIterator = paramBusinessSearchResult.getSearchActions().iterator();
    while (localIterator.hasNext())
    {
      SearchAction localSearchAction = (SearchAction)localIterator.next();
      View localView = a(paramView, localSearchAction);
      paramView.addView(localView);
      if (!localSearchAction.isDisabled()) {
        localView.setOnClickListener(new h(this, localSearchAction, paramBusinessSearchResult));
      }
    }
  }
  
  private void a(View paramView, List<SearchResultAnnotation> paramList)
  {
    paramView = (LinearLayout)paramView.findViewById(2131494018);
    paramView.removeAllViews();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      SearchResultAnnotation localSearchResultAnnotation = (SearchResultAnnotation)paramList.next();
      ViewGroup localViewGroup = (ViewGroup)c.inflate(2130903359, paramView, false);
      Object localObject = (TextView)localViewGroup.findViewById(2131493936);
      ((TextView)localObject).setText(Html.fromHtml(localSearchResultAnnotation.getTitle()));
      ((TextView)localObject).setTextColor(Color.rgb(localSearchResultAnnotation.getRedVal(), localSearchResultAnnotation.getGreenVal(), localSearchResultAnnotation.getBlueVal()));
      localObject = (ImageView)localViewGroup.findViewById(2131493935);
      if (!cp.a(b, (ImageView)localObject, localSearchResultAnnotation.getImagePath())) {
        a.a(localSearchResultAnnotation.getImageUrl()).d().a((ImageView)localObject);
      }
      paramView.addView(localViewGroup);
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
    paramView = paramViewGroup.findViewById(2131493765);
    if (paramView == null) {
      paramView = ((ViewStub)paramViewGroup.findViewById(2131493764)).inflate();
    }
    for (;;)
    {
      BusinessSearchResult localBusinessSearchResult = ((i)getItem(paramInt)).getBusinessSearchResult();
      a(paramView, localBusinessSearchResult.getAnnotations());
      a(paramView, localBusinessSearchResult);
      return paramViewGroup;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */