package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.e;

public final class PublisherAdView
  extends ViewGroup
{
  private final com.google.android.gms.ads.internal.client.c a;
  
  public PublisherAdView(Context paramContext)
  {
    super(paramContext);
    a = new com.google.android.gms.ads.internal.client.c(this);
  }
  
  public PublisherAdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = new com.google.android.gms.ads.internal.client.c(this, paramAttributeSet, true);
  }
  
  public PublisherAdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = new com.google.android.gms.ads.internal.client.c(this, paramAttributeSet, true);
  }
  
  public void a()
  {
    a.a();
  }
  
  public void a(d paramd)
  {
    a.a(paramd.a());
  }
  
  public void b()
  {
    a.i();
  }
  
  public void c()
  {
    a.j();
  }
  
  public com.google.android.gms.ads.a getAdListener()
  {
    return a.b();
  }
  
  public com.google.android.gms.ads.d getAdSize()
  {
    return a.c();
  }
  
  public com.google.android.gms.ads.d[] getAdSizes()
  {
    return a.d();
  }
  
  public String getAdUnitId()
  {
    return a.e();
  }
  
  public a getAppEventListener()
  {
    return a.f();
  }
  
  public String getMediationAdapterClassName()
  {
    return a.k();
  }
  
  public c getOnCustomRenderedAdLoadedListener()
  {
    return a.h();
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
        j = ((com.google.android.gms.ads.d)localObject).b(localContext);
        i = ((com.google.android.gms.ads.d)localObject).a(localContext);
      }
      else
      {
        j = 0;
      }
    }
  }
  
  public void setAdListener(com.google.android.gms.ads.a parama)
  {
    a.a(parama);
  }
  
  public void setAdSizes(com.google.android.gms.ads.d... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length < 1)) {
      throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
    }
    a.b(paramVarArgs);
  }
  
  public void setAdUnitId(String paramString)
  {
    a.a(paramString);
  }
  
  public void setAppEventListener(a parama)
  {
    a.a(parama);
  }
  
  public void setCorrelator(e parame)
  {
    a.a(parame);
  }
  
  public void setManualImpressionsEnabled(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public void setOnCustomRenderedAdLoadedListener(c paramc)
  {
    a.a(paramc);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.doubleclick.PublisherAdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */