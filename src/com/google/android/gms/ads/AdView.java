package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.bh;

public final class AdView
  extends ViewGroup
{
  private final bh ll;
  
  public AdView(Context paramContext)
  {
    super(paramContext);
    ll = new bh(this);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ll = new bh(this, paramAttributeSet, false);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ll = new bh(this, paramAttributeSet, false);
  }
  
  public void destroy()
  {
    ll.destroy();
  }
  
  public AdListener getAdListener()
  {
    return ll.getAdListener();
  }
  
  public AdSize getAdSize()
  {
    return ll.getAdSize();
  }
  
  public String getAdUnitId()
  {
    return ll.getAdUnitId();
  }
  
  public InAppPurchaseListener getInAppPurchaseListener()
  {
    return ll.getInAppPurchaseListener();
  }
  
  public String getMediationAdapterClassName()
  {
    return ll.getMediationAdapterClassName();
  }
  
  public void loadAd(AdRequest paramAdRequest)
  {
    ll.a(paramAdRequest.Y());
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
    AdSize localAdSize = getAdSize();
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
      if (localAdSize != null)
      {
        localObject = getContext();
        j = localAdSize.getWidthInPixels((Context)localObject);
        i = localAdSize.getHeightInPixels((Context)localObject);
      }
      else
      {
        j = 0;
      }
    }
  }
  
  public void pause()
  {
    ll.pause();
  }
  
  public void resume()
  {
    ll.resume();
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    ll.setAdListener(paramAdListener);
  }
  
  public void setAdSize(AdSize paramAdSize)
  {
    ll.setAdSizes(new AdSize[] { paramAdSize });
  }
  
  public void setAdUnitId(String paramString)
  {
    ll.setAdUnitId(paramString);
  }
  
  public void setInAppPurchaseListener(InAppPurchaseListener paramInAppPurchaseListener)
  {
    ll.setInAppPurchaseListener(paramInAppPurchaseListener);
  }
  
  public void setPlayStorePurchaseParams(PlayStorePurchaseListener paramPlayStorePurchaseListener, String paramString)
  {
    ll.setPlayStorePurchaseParams(paramPlayStorePurchaseListener, paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.AdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */