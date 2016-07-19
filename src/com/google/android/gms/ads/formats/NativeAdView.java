package com.google.android.gms.ads.formats;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.bf;
import com.google.android.gms.internal.bq;

public abstract class NativeAdView
  extends FrameLayout
{
  private final FrameLayout a = b(paramContext);
  private final bf b = a();
  
  public NativeAdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public NativeAdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private bf a()
  {
    zzx.zzb(a, "createDelegate must be called after mOverlayFrame has been created");
    return v.d().a(a.getContext(), this, a);
  }
  
  private FrameLayout b(Context paramContext)
  {
    paramContext = a(paramContext);
    paramContext.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    addView(paramContext);
    return paramContext;
  }
  
  protected View a(String paramString)
  {
    try
    {
      paramString = b.a(paramString);
      if (paramString != null)
      {
        paramString = (View)d.a(paramString);
        return paramString;
      }
    }
    catch (RemoteException paramString)
    {
      b.b("Unable to call getAssetView on delegate", paramString);
    }
    return null;
  }
  
  FrameLayout a(Context paramContext)
  {
    return new FrameLayout(paramContext);
  }
  
  protected void a(String paramString, View paramView)
  {
    try
    {
      b.a(paramString, d.a(paramView));
      return;
    }
    catch (RemoteException paramString)
    {
      b.b("Unable to call setAssetView on delegate", paramString);
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    super.bringChildToFront(a);
  }
  
  public void bringChildToFront(View paramView)
  {
    super.bringChildToFront(paramView);
    if (a != paramView) {
      super.bringChildToFront(a);
    }
  }
  
  public void removeAllViews()
  {
    super.removeAllViews();
    super.addView(a);
  }
  
  public void removeView(View paramView)
  {
    if (a == paramView) {
      return;
    }
    super.removeView(paramView);
  }
  
  public void setNativeAd(a parama)
  {
    try
    {
      b.a((c)parama.a());
      return;
    }
    catch (RemoteException parama)
    {
      b.b("Unable to call setNativeAd on delegate", parama);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.formats.NativeAdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */