package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.internal.client.c;

public final class SearchAdView
  extends ViewGroup
{
  private final c a;
  
  public SearchAdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = new c(this, paramAttributeSet, false);
  }
  
  public SearchAdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = new c(this, paramAttributeSet, false);
  }
  
  public a getAdListener()
  {
    return a.b();
  }
  
  public d getAdSize()
  {
    return a.c();
  }
  
  public String getAdUnitId()
  {
    return a.e();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    View localView = getChildAt(0);
    if ((localView != null) && (localView.getVisibility() != 8))
    {
      int i = localView.getMeasuredWidth();
      int j = localView.getMeasuredHeight();
      paramInt1 = (paramInt3 - paramInt1 - i) / 2;
      paramInt2 = (paramInt4 - paramInt2 - j) / 2;
      localView.layout(paramInt1, paramInt2, i + paramInt1, j + paramInt2);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    Object localObject = getChildAt(0);
    int j;
    if ((localObject != null) && (((View)localObject).getVisibility() != 8))
    {
      measureChild((View)localObject, paramInt1, paramInt2);
      j = ((View)localObject).getMeasuredWidth();
      i = ((View)localObject).getMeasuredHeight();
    }
    for (;;)
    {
      j = Math.max(j, getSuggestedMinimumWidth());
      i = Math.max(i, getSuggestedMinimumHeight());
      setMeasuredDimension(View.resolveSize(j, paramInt1), View.resolveSize(i, paramInt2));
      return;
      localObject = getAdSize();
      if (localObject != null)
      {
        Context localContext = getContext();
        j = ((d)localObject).b(localContext);
        i = ((d)localObject).a(localContext);
      }
      else
      {
        j = 0;
      }
    }
  }
  
  public void setAdListener(a parama)
  {
    a.a(parama);
  }
  
  public void setAdSize(d paramd)
  {
    a.a(new d[] { paramd });
  }
  
  public void setAdUnitId(String paramString)
  {
    a.a(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.search.SearchAdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */