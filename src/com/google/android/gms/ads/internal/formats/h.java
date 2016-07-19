package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

public abstract interface h
{
  public abstract void a();
  
  public abstract void a(MotionEvent paramMotionEvent);
  
  public abstract void a(View paramView, Map<String, WeakReference<View>> paramMap, JSONObject paramJSONObject1, JSONObject paramJSONObject2, JSONObject paramJSONObject3);
  
  public abstract void a(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, JSONObject paramJSONObject3);
  
  public abstract void b(View paramView);
  
  public abstract void c(View paramView);
  
  public abstract View e();
  
  public abstract Context f();
  
  public static abstract interface a
  {
    public abstract void a(h paramh);
    
    public abstract String j();
    
    public abstract String k();
    
    public abstract a l();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */