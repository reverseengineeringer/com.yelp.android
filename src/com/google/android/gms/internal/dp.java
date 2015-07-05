package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

@ey
public class dp
  extends dx.a
{
  private static final int rL = Color.argb(0, 0, 0, 0);
  private gu mo;
  private final Activity nB;
  private dr rM;
  private dt rN;
  private dp.c rO;
  private du rP;
  private boolean rQ;
  private boolean rR = false;
  private FrameLayout rS;
  private WebChromeClient.CustomViewCallback rT;
  private boolean rU = false;
  private boolean rV = false;
  private boolean rW = false;
  private RelativeLayout rX;
  
  public dp(Activity paramActivity)
  {
    nB = paramActivity;
  }
  
  private static RelativeLayout.LayoutParams a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(paramInt3, paramInt4);
    localLayoutParams.setMargins(paramInt1, paramInt2, 0, 0);
    localLayoutParams.addRule(10);
    localLayoutParams.addRule(9);
    return localLayoutParams;
  }
  
  public static void a(Context paramContext, dr paramdr)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.AdActivity");
    localIntent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", lO.wV);
    dr.a(localIntent, paramdr);
    if (!ll.in()) {
      localIntent.addFlags(524288);
    }
    if (!(paramContext instanceof Activity)) {
      localIntent.addFlags(268435456);
    }
    paramContext.startActivity(localIntent);
  }
  
  public void X()
  {
    rQ = true;
  }
  
  public void a(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    rS = new FrameLayout(nB);
    rS.setBackgroundColor(-16777216);
    rS.addView(paramView, -1, -1);
    nB.setContentView(rS);
    X();
    rT = paramCustomViewCallback;
    rR = true;
  }
  
  public void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (rN != null) {
      rN.setLayoutParams(a(paramInt1, paramInt2, paramInt3, paramInt4));
    }
  }
  
  public void c(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (rN == null)
    {
      rN = new dt(nB, mo);
      rX.addView(rN, 0, a(paramInt1, paramInt2, paramInt3, paramInt4));
      mo.dD().A(false);
    }
  }
  
  public dt ce()
  {
    return rN;
  }
  
  public void cf()
  {
    if ((rM != null) && (rR)) {
      setRequestedOrientation(rM.orientation);
    }
    if (rS != null)
    {
      nB.setContentView(rX);
      X();
      rS.removeAllViews();
      rS = null;
    }
    if (rT != null)
    {
      rT.onCustomViewHidden();
      rT = null;
    }
    rR = false;
  }
  
  public void cg()
  {
    rX.removeView(rP);
    p(true);
  }
  
  void ch()
  {
    if ((!nB.isFinishing()) || (rV)) {}
    do
    {
      do
      {
        return;
        rV = true;
      } while (!nB.isFinishing());
      if (mo != null)
      {
        cj();
        rX.removeView(mo);
        if (rO != null)
        {
          mo.z(false);
          rO.sa.addView(mo, rO.index, rO.rZ);
        }
      }
    } while ((rM == null) || (rM.sd == null));
    rM.sd.ag();
  }
  
  void ci()
  {
    mo.ci();
  }
  
  void cj()
  {
    mo.cj();
  }
  
  public void close()
  {
    nB.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    boolean bool = false;
    if (paramBundle != null) {
      bool = paramBundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
    }
    rU = bool;
    try
    {
      rM = dr.b(nB.getIntent());
      if (rM != null) {
        break label68;
      }
      throw new dp.a("Could not get info for ad overlay.");
    }
    catch (dp.a paramBundle)
    {
      gr.W(paramBundle.getMessage());
      nB.finish();
    }
    return;
    label68:
    if (rM.sn != null)
    {
      rW = rM.sn.mi;
      label92:
      if (paramBundle == null)
      {
        if (rM.sd != null) {
          rM.sd.ah();
        }
        if ((rM.sk != 1) && (rM.sc != null)) {
          rM.sc.onAdClicked();
        }
      }
      switch (rM.sk)
      {
      }
    }
    for (;;)
    {
      throw new dp.a("Could not determine ad overlay type.");
      rW = false;
      break label92;
      r(false);
      return;
      rO = new dp.c(rM.se);
      r(false);
      return;
      r(true);
      return;
      if (rU)
      {
        nB.finish();
        return;
      }
      if (dm.a(nB, rM.sb, rM.sj)) {
        break;
      }
      nB.finish();
      return;
    }
  }
  
  public void onDestroy()
  {
    if (rN != null) {
      rN.destroy();
    }
    if (mo != null) {
      rX.removeView(mo);
    }
    ch();
  }
  
  public void onPause()
  {
    if (rN != null) {
      rN.pause();
    }
    cf();
    if ((mo != null) && ((!nB.isFinishing()) || (rO == null))) {
      gi.a(mo);
    }
    ch();
  }
  
  public void onRestart() {}
  
  public void onResume()
  {
    if ((rM != null) && (rM.sk == 4))
    {
      if (!rU) {
        break label47;
      }
      nB.finish();
    }
    for (;;)
    {
      if (mo != null) {
        gi.b(mo);
      }
      return;
      label47:
      rU = true;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", rU);
  }
  
  public void onStart() {}
  
  public void onStop()
  {
    ch();
  }
  
  public void p(boolean paramBoolean)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      i = 50;
      rP = new du(nB, i);
      localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(10);
      if (!paramBoolean) {
        break label86;
      }
    }
    label86:
    for (int i = 11;; i = 9)
    {
      localLayoutParams.addRule(i);
      rP.q(rM.sh);
      rX.addView(rP, localLayoutParams);
      return;
      i = 32;
      break;
    }
  }
  
  public void q(boolean paramBoolean)
  {
    if (rP != null) {
      rP.q(paramBoolean);
    }
  }
  
  void r(boolean paramBoolean)
  {
    if (!rQ) {
      nB.requestWindowFeature(1);
    }
    Object localObject = nB.getWindow();
    if ((!rW) || (rM.sn.ms)) {
      ((Window)localObject).setFlags(1024, 1024);
    }
    setRequestedOrientation(rM.orientation);
    if (Build.VERSION.SDK_INT >= 11)
    {
      gr.S("Enabling hardware acceleration on the AdActivity window.");
      gm.a((Window)localObject);
    }
    rX = new dp.b(nB, rM.sm);
    boolean bool;
    if (!rW)
    {
      rX.setBackgroundColor(-16777216);
      nB.setContentView(rX);
      X();
      bool = rM.se.dD().dN();
      if (!paramBoolean) {
        break label436;
      }
      mo = gu.a(nB, rM.se.ac(), true, bool, null, rM.lO);
      mo.dD().a(null, null, rM.sf, rM.sj, true, rM.sl, rM.se.dD().dM());
      mo.dD().a(new dp.1(this));
      if (rM.rH == null) {
        break label384;
      }
      mo.loadUrl(rM.rH);
    }
    for (;;)
    {
      mo.a(this);
      localObject = mo.getParent();
      if ((localObject != null) && ((localObject instanceof ViewGroup))) {
        ((ViewGroup)localObject).removeView(mo);
      }
      if (rW) {
        mo.setBackgroundColor(rL);
      }
      rX.addView(mo, -1, -1);
      if (!paramBoolean) {
        ci();
      }
      p(bool);
      if (mo.dE()) {
        q(true);
      }
      return;
      rX.setBackgroundColor(rL);
      break;
      label384:
      if (rM.si != null)
      {
        mo.loadDataWithBaseURL(rM.sg, rM.si, "text/html", "UTF-8", null);
      }
      else
      {
        throw new dp.a("No URL or HTML to display in ad overlay.");
        label436:
        mo = rM.se;
        mo.setContext(nB);
      }
    }
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    nB.setRequestedOrientation(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */