package com.google.android.gms.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import org.json.JSONException;
import org.json.JSONObject;

@ey
public class dl
{
  private final Context mContext;
  private final WindowManager mR;
  private final gu mo;
  int rA = -1;
  int rB = -1;
  private int rC;
  private int rD = -1;
  private int rE = -1;
  private int[] rF = new int[2];
  private final bl rx;
  DisplayMetrics ry;
  private float rz;
  
  public dl(gu paramgu, Context paramContext, bl parambl)
  {
    mo = paramgu;
    mContext = paramContext;
    rx = parambl;
    mR = ((WindowManager)paramContext.getSystemService("window"));
    bV();
    bW();
    bX();
  }
  
  private void bV()
  {
    ry = new DisplayMetrics();
    Display localDisplay = mR.getDefaultDisplay();
    localDisplay.getMetrics(ry);
    rz = ry.density;
    rC = localDisplay.getRotation();
  }
  
  private void bX()
  {
    mo.getLocationOnScreen(rF);
    mo.measure(0, 0);
    float f = 160.0F / ry.densityDpi;
    rD = Math.round(mo.getMeasuredWidth() * f);
    rE = Math.round(f * mo.getMeasuredHeight());
  }
  
  private dk cd()
  {
    return new dk.a().l(rx.bo()).k(rx.bp()).m(rx.bt()).n(rx.bq()).o(rx.br()).bU();
  }
  
  void bW()
  {
    int i = gi.s(mContext);
    float f = 160.0F / ry.densityDpi;
    rA = Math.round(ry.widthPixels * f);
    rB = Math.round((ry.heightPixels - i) * f);
  }
  
  public void bY()
  {
    cb();
    cc();
    ca();
    bZ();
  }
  
  public void bZ()
  {
    if (gr.v(2)) {
      gr.U("Dispatching Ready Event.");
    }
    mo.b("onReadyEventReceived", new JSONObject());
  }
  
  public void ca()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("x", rF[0]).put("y", rF[1]).put("width", rD).put("height", rE);
      mo.b("onDefaultPositionReceived", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      gr.b("Error occured while dispatching default position.", localJSONException);
    }
  }
  
  public void cb()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("width", rA).put("height", rB).put("density", rz).put("rotation", rC);
      mo.b("onScreenInfoChanged", localJSONObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      gr.b("Error occured while obtaining screen information.", localJSONException);
    }
  }
  
  public void cc()
  {
    dk localdk = cd();
    mo.b("onDeviceFeaturesReceived", localdk.toJson());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */