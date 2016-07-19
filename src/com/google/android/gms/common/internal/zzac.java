package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.Button;
import com.google.android.gms.common.api.Scope;
import com.yelp.android.ba.a.a;
import com.yelp.android.ba.a.b;
import com.yelp.android.ba.a.e;

public final class zzac
  extends Button
{
  public zzac(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public zzac(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 16842824);
  }
  
  private void zza(Resources paramResources)
  {
    setTypeface(Typeface.DEFAULT_BOLD);
    setTextSize(14.0F);
    float f = getDisplayMetricsdensity;
    setMinHeight((int)(f * 48.0F + 0.5F));
    setMinWidth((int)(f * 48.0F + 0.5F));
  }
  
  private void zza(Resources paramResources, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (paramInt1 = zzd(paramInt1, zzf(paramInt2, a.b.common_plus_signin_btn_icon_dark, a.b.common_plus_signin_btn_icon_light, a.b.common_plus_signin_btn_icon_dark), zzf(paramInt2, a.b.common_plus_signin_btn_text_dark, a.b.common_plus_signin_btn_text_light, a.b.common_plus_signin_btn_text_dark));; paramInt1 = zzd(paramInt1, zzf(paramInt2, a.b.common_google_signin_btn_icon_dark, a.b.common_google_signin_btn_icon_light, a.b.common_google_signin_btn_icon_light), zzf(paramInt2, a.b.common_google_signin_btn_text_dark, a.b.common_google_signin_btn_text_light, a.b.common_google_signin_btn_text_light)))
    {
      setBackgroundDrawable(paramResources.getDrawable(paramInt1));
      return;
    }
  }
  
  private boolean zza(Scope[] paramArrayOfScope)
  {
    if (paramArrayOfScope == null) {}
    for (;;)
    {
      return false;
      int j = paramArrayOfScope.length;
      int i = 0;
      while (i < j)
      {
        String str = paramArrayOfScope[i].zzpb();
        if ((str.contains("/plus.")) && (!str.equals("https://www.googleapis.com/auth/plus.me"))) {
          return true;
        }
        if (str.equals("https://www.googleapis.com/auth/games")) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  private void zzb(Resources paramResources, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (paramInt2 = zzf(paramInt2, a.a.common_plus_signin_btn_text_dark, a.a.common_plus_signin_btn_text_light, a.a.common_plus_signin_btn_text_dark);; paramInt2 = zzf(paramInt2, a.a.common_google_signin_btn_text_dark, a.a.common_google_signin_btn_text_light, a.a.common_google_signin_btn_text_light))
    {
      setTextColor((ColorStateList)zzx.zzz(paramResources.getColorStateList(paramInt2)));
      switch (paramInt1)
      {
      default: 
        throw new IllegalStateException("Unknown button size: " + paramInt1);
      }
    }
    setText(paramResources.getString(a.e.common_signin_button_text));
    for (;;)
    {
      setTransformationMethod(null);
      return;
      setText(paramResources.getString(a.e.common_signin_button_text_long));
      continue;
      setText(null);
    }
  }
  
  private int zzd(int paramInt1, int paramInt2, int paramInt3)
  {
    switch (paramInt1)
    {
    default: 
      throw new IllegalStateException("Unknown button size: " + paramInt1);
    case 2: 
      paramInt3 = paramInt2;
    }
    return paramInt3;
  }
  
  private int zzf(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    switch (paramInt1)
    {
    default: 
      throw new IllegalStateException("Unknown color scheme: " + paramInt1);
    case 1: 
      paramInt2 = paramInt3;
    case 0: 
      return paramInt2;
    }
    return paramInt4;
  }
  
  public void zza(Resources paramResources, int paramInt1, int paramInt2, Scope[] paramArrayOfScope)
  {
    boolean bool = zza(paramArrayOfScope);
    zza(paramResources);
    zza(paramResources, paramInt1, paramInt2, bool);
    zzb(paramResources, paramInt1, paramInt2, bool);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */