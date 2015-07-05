package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.google.android.gms.ads.AdSize;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@ey
public class di
{
  static final Set<String> rk = new HashSet(Arrays.asList(new String[] { "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center" }));
  private int li = -1;
  private int lj = -1;
  private final Context mContext;
  private final gu mo;
  private final Map<String, String> rd;
  private int rl = 0;
  private int rm = 0;
  private boolean rn = true;
  private String ro = "top-right";
  
  public di(gu paramgu, Map<String, String> paramMap)
  {
    mo = paramgu;
    rd = paramMap;
    mContext = paramgu.dI();
  }
  
  private void bQ()
  {
    Object localObject = gi.t(mContext);
    int i;
    if (!TextUtils.isEmpty((CharSequence)rd.get("width")))
    {
      i = gi.M((String)rd.get("width"));
      if (b(i, localObject[0])) {
        li = i;
      }
    }
    if (!TextUtils.isEmpty((CharSequence)rd.get("height")))
    {
      i = gi.M((String)rd.get("height"));
      if (c(i, localObject[1])) {
        lj = i;
      }
    }
    if (!TextUtils.isEmpty((CharSequence)rd.get("offsetX"))) {
      rl = gi.M((String)rd.get("offsetX"));
    }
    if (!TextUtils.isEmpty((CharSequence)rd.get("offsetY"))) {
      rm = gi.M((String)rd.get("offsetY"));
    }
    if (!TextUtils.isEmpty((CharSequence)rd.get("allowOffscreen"))) {
      rn = Boolean.parseBoolean((String)rd.get("allowOffscreen"));
    }
    localObject = (String)rd.get("customClosePosition");
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (rk.contains(localObject))) {
      ro = ((String)localObject);
    }
  }
  
  boolean b(int paramInt1, int paramInt2)
  {
    return (paramInt1 >= 50) && (paramInt1 < paramInt2);
  }
  
  boolean bR()
  {
    return (li > -1) && (lj > -1);
  }
  
  void bS()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("x", rl).put("y", rm).put("width", li).put("height", lj);
      mo.b("onSizeChanged", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      gr.b("Error occured while dispatching size change.", localJSONException);
    }
  }
  
  void bT()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("state", "resized");
      mo.b("onStateChanged", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      gr.b("Error occured while dispatching state change.", localJSONException);
    }
  }
  
  boolean c(int paramInt1, int paramInt2)
  {
    return (paramInt1 >= 50) && (paramInt1 < paramInt2);
  }
  
  public void execute()
  {
    gr.U("PLEASE IMPLEMENT mraid.resize()");
    if (mContext == null)
    {
      gr.W("Not an activity context. Cannot resize.");
      return;
    }
    if (mo.ac().oq)
    {
      gr.W("Is interstitial. Cannot resize an interstitial.");
      return;
    }
    if (mo.dH())
    {
      gr.W("Is expanded. Cannot resize an expanded banner.");
      return;
    }
    bQ();
    if (!bR())
    {
      gr.W("Invalid width and height options. Cannot resize.");
      return;
    }
    Object localObject1 = (WindowManager)mContext.getSystemService("window");
    Object localObject2 = new DisplayMetrics();
    ((WindowManager)localObject1).getDefaultDisplay().getMetrics((DisplayMetrics)localObject2);
    int i = gq.a((DisplayMetrics)localObject2, li);
    int j = gq.a((DisplayMetrics)localObject2, lj);
    localObject1 = mo.getParent();
    if ((localObject1 != null) && ((localObject1 instanceof ViewGroup))) {
      ((ViewGroup)localObject1).removeView(mo);
    }
    localObject1 = new LinearLayout(mContext);
    ((LinearLayout)localObject1).setBackgroundColor(0);
    localObject2 = new PopupWindow(mContext);
    ((PopupWindow)localObject2).setHeight(j + 16);
    ((PopupWindow)localObject2).setWidth(i + 16);
    if (!rn) {}
    for (boolean bool = true;; bool = false)
    {
      ((PopupWindow)localObject2).setClippingEnabled(bool);
      ((PopupWindow)localObject2).setContentView((View)localObject1);
      ((LinearLayout)localObject1).addView(mo, -1, -1);
      ((PopupWindow)localObject2).showAtLocation(((Activity)mContext).getWindow().getDecorView(), 0, rl, rm);
      mo.a(new ay(mContext, new AdSize(li, lj)));
      bS();
      bT();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */