package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.webkit.WebSettings;

@TargetApi(17)
public class he$d
  extends he.f
{
  public Drawable a(Context paramContext, Bitmap paramBitmap, boolean paramBoolean, float paramFloat)
  {
    if ((!paramBoolean) || (paramFloat <= 0.0F) || (paramFloat > 25.0F)) {
      return new BitmapDrawable(paramContext.getResources(), paramBitmap);
    }
    try
    {
      Object localObject3 = Bitmap.createScaledBitmap(paramBitmap, paramBitmap.getWidth(), paramBitmap.getHeight(), false);
      Object localObject1 = Bitmap.createBitmap((Bitmap)localObject3);
      Object localObject2 = RenderScript.create(paramContext);
      ScriptIntrinsicBlur localScriptIntrinsicBlur = ScriptIntrinsicBlur.create((RenderScript)localObject2, Element.U8_4((RenderScript)localObject2));
      localObject3 = Allocation.createFromBitmap((RenderScript)localObject2, (Bitmap)localObject3);
      localObject2 = Allocation.createFromBitmap((RenderScript)localObject2, (Bitmap)localObject1);
      localScriptIntrinsicBlur.setRadius(paramFloat);
      localScriptIntrinsicBlur.setInput((Allocation)localObject3);
      localScriptIntrinsicBlur.forEach((Allocation)localObject2);
      ((Allocation)localObject2).copyTo((Bitmap)localObject1);
      localObject1 = new BitmapDrawable(paramContext.getResources(), (Bitmap)localObject1);
      return (Drawable)localObject1;
    }
    catch (RuntimeException localRuntimeException) {}
    return new BitmapDrawable(paramContext.getResources(), paramBitmap);
  }
  
  public String a(Context paramContext)
  {
    return WebSettings.getDefaultUserAgent(paramContext);
  }
  
  public boolean a(Context paramContext, WebSettings paramWebSettings)
  {
    super.a(paramContext, paramWebSettings);
    paramWebSettings.setMediaPlaybackRequiresUserGesture(false);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.he.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */