package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@ey
public class u
  extends bd.a
  implements cb, ce, cg, cs, ds, dv, ej, ez.a, fc.a, gc, t, w
{
  private final cy lA;
  private final u.b lB;
  private final ab lC;
  private final ae lD;
  private boolean lE;
  private final ComponentCallbacks lF = new u.1(this);
  private av lz;
  
  public u(Context paramContext, ay paramay, String paramString, cy paramcy, gs paramgs)
  {
    this(new u.b(paramContext, paramay, paramString, paramgs), paramcy, null);
  }
  
  u(u.b paramb, cy paramcy, ab paramab)
  {
    lB = paramb;
    lA = paramcy;
    if (paramab != null) {}
    for (;;)
    {
      lC = paramab;
      lD = new ae();
      gi.q(lB.lM);
      ga.a(lB.lM, lB.lO);
      ad();
      return;
      paramab = new ab(this);
    }
  }
  
  private fh.a a(av paramav, Bundle paramBundle)
  {
    ApplicationInfo localApplicationInfo = lB.lM.getApplicationInfo();
    try
    {
      PackageInfo localPackageInfo = lB.lM.getPackageManager().getPackageInfo(packageName, 0);
      String str = null;
      Object localObject2 = str;
      if (!lB.lS.oq)
      {
        localObject2 = str;
        if (lB.lK.getParent() != null)
        {
          localObject2 = new int[2];
          lB.lK.getLocationOnScreen((int[])localObject2);
          int k = localObject2[0];
          int m = localObject2[1];
          localObject2 = lB.lM.getResources().getDisplayMetrics();
          int n = lB.lK.getWidth();
          int i1 = lB.lK.getHeight();
          int j = 0;
          int i = j;
          if (lB.lK.isShown())
          {
            i = j;
            if (k + n > 0)
            {
              i = j;
              if (m + i1 > 0)
              {
                i = j;
                if (k <= widthPixels)
                {
                  i = j;
                  if (m <= heightPixels) {
                    i = 1;
                  }
                }
              }
            }
          }
          localObject2 = new Bundle(5);
          ((Bundle)localObject2).putInt("x", k);
          ((Bundle)localObject2).putInt("y", m);
          ((Bundle)localObject2).putInt("width", n);
          ((Bundle)localObject2).putInt("height", i1);
          ((Bundle)localObject2).putInt("visible", i);
        }
      }
      str = ga.df();
      lB.lV = new fz(str, lB.lL);
      lB.lV.e(paramav);
      Bundle localBundle = ga.a(lB.lM, this, str);
      return new fh.a((Bundle)localObject2, paramav, lB.lS, lB.lL, localApplicationInfo, localPackageInfo, str, ga.vY, lB.lO, localBundle, lB.mc, paramBundle, ga.dl());
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Object localObject1 = null;
      }
    }
  }
  
  private gu a(v paramv)
  {
    if (lB.lS.oq)
    {
      localObject = gu.a(lB.lM, lB.lS, false, false, lB.lN, lB.lO);
      ((gu)localObject).dD().a(this, null, this, this, true, this, this, paramv);
      return (gu)localObject;
    }
    Object localObject = lB.lK.getNextView();
    if ((localObject instanceof gu))
    {
      localObject = (gu)localObject;
      ((gu)localObject).a(lB.lM, lB.lS);
    }
    for (;;)
    {
      ((gu)localObject).dD().a(this, this, this, this, false, this, paramv);
      return (gu)localObject;
      if (localObject != null) {
        lB.lK.removeView((View)localObject);
      }
      gu localgu = gu.a(lB.lM, lB.lS, false, false, lB.lN, lB.lO);
      localObject = localgu;
      if (lB.lS.or == null)
      {
        c(localgu);
        localObject = localgu;
      }
    }
  }
  
  private void a(int paramInt)
  {
    gr.W("Failed to load ad: " + paramInt);
    if (lB.lP != null) {}
    try
    {
      lB.lP.onAdFailedToLoad(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call AdListener.onAdFailedToLoad().", localRemoteException);
    }
  }
  
  private void ad()
  {
    if ((Build.VERSION.SDK_INT >= 14) && (lB != null) && (lB.lM != null)) {
      lB.lM.registerComponentCallbacks(lF);
    }
  }
  
  private void ae()
  {
    if ((Build.VERSION.SDK_INT >= 14) && (lB != null) && (lB.lM != null)) {
      lB.lM.unregisterComponentCallbacks(lF);
    }
  }
  
  private void ao()
  {
    gr.U("Ad closing.");
    if (lB.lP != null) {}
    try
    {
      lB.lP.onAdClosed();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call AdListener.onAdClosed().", localRemoteException);
    }
  }
  
  private void ap()
  {
    gr.U("Ad leaving application.");
    if (lB.lP != null) {}
    try
    {
      lB.lP.onAdLeftApplication();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call AdListener.onAdLeftApplication().", localRemoteException);
    }
  }
  
  private void aq()
  {
    gr.U("Ad opening.");
    if (lB.lP != null) {}
    try
    {
      lB.lP.onAdOpened();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call AdListener.onAdOpened().", localRemoteException);
    }
  }
  
  private void ar()
  {
    gr.U("Ad finished loading.");
    if (lB.lP != null) {}
    try
    {
      lB.lP.onAdLoaded();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call AdListener.onAdLoaded().", localRemoteException);
    }
  }
  
  private void as()
  {
    try
    {
      if (((lB.lT.vI instanceof bt)) && (lB.lZ != null)) {
        lB.lZ.a((bt)lB.lT.vI);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", localRemoteException);
    }
  }
  
  private void at()
  {
    try
    {
      if (((lB.lT.vI instanceof bu)) && (lB.ma != null)) {
        lB.ma.a((bu)lB.lT.vI);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call OnContentAdLoadedListener.onContentAdLoaded().", localRemoteException);
    }
  }
  
  private void ax()
  {
    if (lB.lT != null)
    {
      if (lB.mg == 0) {
        lB.lT.se.destroy();
      }
      lB.lT = null;
      lB.mi = false;
    }
  }
  
  /* Error */
  private boolean b(fy paramfy)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 422	com/google/android/gms/internal/fy:tW	Z
    //   4: ifeq +184 -> 188
    //   7: aload_1
    //   8: getfield 426	com/google/android/gms/internal/fy:qQ	Lcom/google/android/gms/internal/cz;
    //   11: invokeinterface 432 1 0
    //   16: invokestatic 438	com/google/android/gms/dynamic/e:f	(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;
    //   19: checkcast 440	android/view/View
    //   22: astore_1
    //   23: aload_0
    //   24: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   27: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   30: invokevirtual 259	com/google/android/gms/internal/u$a:getNextView	()Landroid/view/View;
    //   33: astore_2
    //   34: aload_2
    //   35: ifnull +14 -> 49
    //   38: aload_0
    //   39: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   42: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   45: aload_2
    //   46: invokevirtual 269	com/google/android/gms/internal/u$a:removeView	(Landroid/view/View;)V
    //   49: aload_0
    //   50: aload_1
    //   51: invokespecial 276	com/google/android/gms/internal/u:c	(Landroid/view/View;)V
    //   54: aload_0
    //   55: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   58: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   61: invokevirtual 443	com/google/android/gms/internal/u$a:getChildCount	()I
    //   64: iconst_1
    //   65: if_icmple +13 -> 78
    //   68: aload_0
    //   69: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   72: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   75: invokevirtual 446	com/google/android/gms/internal/u$a:showNext	()V
    //   78: aload_0
    //   79: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   82: getfield 368	com/google/android/gms/internal/u$b:lT	Lcom/google/android/gms/internal/fy;
    //   85: ifnull +70 -> 155
    //   88: aload_0
    //   89: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   92: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   95: invokevirtual 259	com/google/android/gms/internal/u$a:getNextView	()Landroid/view/View;
    //   98: astore_1
    //   99: aload_1
    //   100: instanceof 243
    //   103: ifeq +158 -> 261
    //   106: aload_1
    //   107: checkcast 243	com/google/android/gms/internal/gu
    //   110: aload_0
    //   111: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   114: getfield 79	com/google/android/gms/internal/u$b:lM	Landroid/content/Context;
    //   117: aload_0
    //   118: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   121: getfield 130	com/google/android/gms/internal/u$b:lS	Lcom/google/android/gms/internal/ay;
    //   124: invokevirtual 262	com/google/android/gms/internal/gu:a	(Landroid/content/Context;Lcom/google/android/gms/internal/ay;)V
    //   127: aload_0
    //   128: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   131: getfield 368	com/google/android/gms/internal/u$b:lT	Lcom/google/android/gms/internal/fy;
    //   134: getfield 426	com/google/android/gms/internal/fy:qQ	Lcom/google/android/gms/internal/cz;
    //   137: ifnull +18 -> 155
    //   140: aload_0
    //   141: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   144: getfield 368	com/google/android/gms/internal/u$b:lT	Lcom/google/android/gms/internal/fy;
    //   147: getfield 426	com/google/android/gms/internal/fy:qQ	Lcom/google/android/gms/internal/cz;
    //   150: invokeinterface 447 1 0
    //   155: aload_0
    //   156: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   159: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   162: iconst_0
    //   163: invokevirtual 450	com/google/android/gms/internal/u$a:setVisibility	(I)V
    //   166: iconst_1
    //   167: ireturn
    //   168: astore_1
    //   169: ldc_w 452
    //   172: aload_1
    //   173: invokestatic 315	com/google/android/gms/internal/gr:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   176: iconst_0
    //   177: ireturn
    //   178: astore_1
    //   179: ldc_w 454
    //   182: aload_1
    //   183: invokestatic 315	com/google/android/gms/internal/gr:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   186: iconst_0
    //   187: ireturn
    //   188: aload_1
    //   189: getfield 457	com/google/android/gms/internal/fy:vF	Lcom/google/android/gms/internal/ay;
    //   192: ifnull -138 -> 54
    //   195: aload_1
    //   196: getfield 409	com/google/android/gms/internal/fy:se	Lcom/google/android/gms/internal/gu;
    //   199: aload_1
    //   200: getfield 457	com/google/android/gms/internal/fy:vF	Lcom/google/android/gms/internal/ay;
    //   203: invokevirtual 460	com/google/android/gms/internal/gu:a	(Lcom/google/android/gms/internal/ay;)V
    //   206: aload_0
    //   207: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   210: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   213: invokevirtual 463	com/google/android/gms/internal/u$a:removeAllViews	()V
    //   216: aload_0
    //   217: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   220: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   223: aload_1
    //   224: getfield 457	com/google/android/gms/internal/fy:vF	Lcom/google/android/gms/internal/ay;
    //   227: getfield 464	com/google/android/gms/internal/ay:widthPixels	I
    //   230: invokevirtual 467	com/google/android/gms/internal/u$a:setMinimumWidth	(I)V
    //   233: aload_0
    //   234: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   237: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   240: aload_1
    //   241: getfield 457	com/google/android/gms/internal/fy:vF	Lcom/google/android/gms/internal/ay;
    //   244: getfield 468	com/google/android/gms/internal/ay:heightPixels	I
    //   247: invokevirtual 471	com/google/android/gms/internal/u$a:setMinimumHeight	(I)V
    //   250: aload_0
    //   251: aload_1
    //   252: getfield 409	com/google/android/gms/internal/fy:se	Lcom/google/android/gms/internal/gu;
    //   255: invokespecial 276	com/google/android/gms/internal/u:c	(Landroid/view/View;)V
    //   258: goto -204 -> 54
    //   261: aload_1
    //   262: ifnull -135 -> 127
    //   265: aload_0
    //   266: getfield 66	com/google/android/gms/internal/u:lB	Lcom/google/android/gms/internal/u$b;
    //   269: getfield 139	com/google/android/gms/internal/u$b:lK	Lcom/google/android/gms/internal/u$a;
    //   272: aload_1
    //   273: invokevirtual 269	com/google/android/gms/internal/u$a:removeView	(Landroid/view/View;)V
    //   276: goto -149 -> 127
    //   279: astore_1
    //   280: ldc_w 473
    //   283: invokestatic 300	com/google/android/gms/internal/gr:W	(Ljava/lang/String;)V
    //   286: goto -131 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	289	0	this	u
    //   0	289	1	paramfy	fy
    //   33	13	2	localView	View
    // Exception table:
    //   from	to	target	type
    //   7	23	168	android/os/RemoteException
    //   49	54	178	java/lang/Throwable
    //   140	155	279	android/os/RemoteException
  }
  
  private void c(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -2);
    lB.lK.addView(paramView, localLayoutParams);
  }
  
  private void e(boolean paramBoolean)
  {
    if (lB.lT == null) {
      gr.W("Ad state was null when trying to ping impression URLs.");
    }
    do
    {
      return;
      gr.S("Pinging Impression URLs.");
      lB.lV.cW();
      if (lB.lT.qx != null) {
        gi.a(lB.lM, lB.lO.wS, lB.lT.qx);
      }
      if ((lB.lT.vE != null) && (lB.lT.vE.qx != null)) {
        cw.a(lB.lM, lB.lO.wS, lB.lT, lB.lL, paramBoolean, lB.lT.vE.qx);
      }
    } while ((lB.lT.qP == null) || (lB.lT.qP.qs == null));
    cw.a(lB.lM, lB.lO.wS, lB.lT, lB.lL, paramBoolean, lB.lT.qP.qs);
  }
  
  Bundle a(an paraman)
  {
    if (paraman == null) {}
    for (;;)
    {
      return null;
      if (paraman.be()) {
        paraman.wakeup();
      }
      Object localObject = paraman.bc();
      if (localObject != null)
      {
        paraman = ((ak)localObject).aT();
        gr.S("In AdManger: loadAd, " + ((ak)localObject).toString());
      }
      while (paraman != null)
      {
        localObject = new Bundle(1);
        ((Bundle)localObject).putString("fingerprint", paraman);
        ((Bundle)localObject).putInt("v", 1);
        return (Bundle)localObject;
        paraman = null;
      }
    }
  }
  
  public void a(ay paramay)
  {
    jx.aU("setAdSize must be called on the main UI thread.");
    lB.lS = paramay;
    if ((lB.lT != null) && (lB.mg == 0)) {
      lB.lT.se.a(paramay);
    }
    if (lB.lK.getChildCount() > 1) {
      lB.lK.removeView(lB.lK.getNextView());
    }
    lB.lK.setMinimumWidth(widthPixels);
    lB.lK.setMinimumHeight(heightPixels);
    lB.lK.requestLayout();
  }
  
  public void a(bc parambc)
  {
    jx.aU("setAdListener must be called on the main UI thread.");
    lB.lP = parambc;
  }
  
  public void a(bf parambf)
  {
    jx.aU("setAppEventListener must be called on the main UI thread.");
    lB.lW = parambf;
  }
  
  public void a(br parambr)
  {
    jx.aU("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
    lB.mb = parambr;
  }
  
  public void a(en paramen)
  {
    jx.aU("setInAppPurchaseListener must be called on the main UI thread.");
    lB.lY = paramen;
  }
  
  public void a(er paramer, String paramString)
  {
    jx.aU("setPlayStorePurchaseParams must be called on the main UI thread.");
    lB.md = new ek(paramString);
    lB.lX = paramer;
    if ((!ga.dj()) && (paramer != null)) {
      new ec(lB.lM, lB.lX, lB.md).start();
    }
  }
  
  public void a(fy.a parama)
  {
    Object localObject = null;
    lB.lQ = null;
    lB.lU = parama;
    a(null);
    gu localgu;
    if (!vK.ug)
    {
      v localv = new v();
      localgu = a(localv);
      localv.a(new v.b(parama, localgu));
      localgu.setOnTouchListener(new u.2(this, localv));
      localgu.setOnClickListener(new u.3(this, localv));
    }
    for (;;)
    {
      if (lS != null) {
        lB.lS = lS;
      }
      if (errorCode != -2)
      {
        a(new fy(parama, localgu, null, null, null, null, null));
        return;
      }
      if ((!vK.tW) && (vK.uf))
      {
        if (vK.sg != null) {
          localObject = Uri.parse(vK.sg).buildUpon().query(null).build().toString();
        }
        localObject = new bo(this, (String)localObject, vK.tU);
        try
        {
          if (lB.mb != null)
          {
            lB.mg = 1;
            lB.mb.a((bq)localObject);
            return;
          }
        }
        catch (RemoteException localRemoteException)
        {
          gr.d("Could not call the onCustomRenderedAdLoadedListener.", localRemoteException);
        }
      }
      lB.mg = 0;
      lB.lR = fc.a(lB.lM, this, parama, localgu, lA, this);
      return;
      localgu = null;
    }
  }
  
  public void a(fy paramfy)
  {
    lB.lR = null;
    if (vI != null) {}
    for (boolean bool = true;; bool = false)
    {
      if ((errorCode != -2) && (errorCode != 3)) {
        ga.b(lB.ay());
      }
      if (errorCode != -1) {
        break;
      }
      return;
    }
    if (a(paramfy, bool)) {
      gr.S("Ad refresh scheduled.");
    }
    if ((errorCode == 3) && (vE != null) && (vE.qy != null))
    {
      gr.S("Pinging no fill URLs.");
      cw.a(lB.lM, lB.lO.wS, paramfy, lB.lL, false, vE.qy);
    }
    if (errorCode != -2)
    {
      a(errorCode);
      return;
    }
    if ((!lB.lS.oq) && (!bool) && (lB.mg == 0))
    {
      if (!b(paramfy))
      {
        a(0);
        return;
      }
      if (lB.lK != null) {
        u.a.a(lB.lK).Q(ub);
      }
    }
    if ((lB.lT != null) && (lB.lT.qS != null)) {
      lB.lT.qS.a(null);
    }
    if (qS != null) {
      qS.a(this);
    }
    lD.d(lB.lT);
    lB.lT = paramfy;
    lB.lV.j(vG);
    lB.lV.k(vH);
    lB.lV.v(lB.lS.oq);
    lB.lV.w(tW);
    if ((!lB.lS.oq) && (!bool) && (lB.mg == 0)) {
      e(false);
    }
    if (lB.me == null) {
      lB.me = new gd(lB.lL);
    }
    int j;
    int i;
    if (vE != null)
    {
      j = vE.qB;
      i = vE.qC;
    }
    for (;;)
    {
      lB.me.d(j, i);
      if (lB.mg == 0)
      {
        if ((!lB.lS.oq) && (se != null) && ((se.dD().dN()) || (vD != null)))
        {
          af localaf = lD.a(lB.lS, lB.lT);
          if ((se.dD().dN()) && (localaf != null)) {
            localaf.a(new aa(se));
          }
        }
        if (lB.lT.se != null)
        {
          lB.lT.se.cb();
          lB.lT.se.dD().dO();
        }
        if (bool)
        {
          paramfy = vI;
          if ((!(paramfy instanceof bu)) || (lB.ma == null)) {
            break label650;
          }
          at();
        }
        for (;;)
        {
          ar();
          return;
          label650:
          if ((!(paramfy instanceof bt)) || (lB.lZ == null)) {
            break;
          }
          as();
        }
        gr.W("No matching listener for retrieved native ad template.");
        a(0);
        return;
      }
      if ((lB.mf == null) || (vD == null)) {
        break;
      }
      lD.a(lB.lM, lB.lS, lB.lT, lB.mf, lB.lO);
      return;
      i = 0;
      j = 0;
    }
  }
  
  public void a(String paramString, ArrayList<String> paramArrayList)
  {
    paramArrayList = new ed(paramString, paramArrayList, lB.lM, lB.lO.wS);
    if (lB.lY == null)
    {
      gr.W("InAppPurchaseListener is not set. Try to launch default purchase flow.");
      if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(lB.lM) != 0)
      {
        gr.W("Google Play Service unavailable, cannot launch default purchase flow.");
        return;
      }
      if (lB.lX == null)
      {
        gr.W("PlayStorePurchaseListener is not set.");
        return;
      }
      if (lB.md == null)
      {
        gr.W("PlayStorePurchaseVerifier is not initialized.");
        return;
      }
      if (lB.mh)
      {
        gr.W("An in-app purchase request is already in progress, abort");
        return;
      }
      lB.mh = true;
      try
      {
        if (!lB.lX.isValidPurchase(paramString))
        {
          lB.mh = false;
          return;
        }
      }
      catch (RemoteException paramString)
      {
        gr.W("Could not start In-App purchase.");
        lB.mh = false;
        return;
      }
      ee.a(lB.lM, lB.lO.wV, new ea(lB.lM, lB.md, paramArrayList, this));
      return;
    }
    try
    {
      lB.lY.a(paramArrayList);
      return;
    }
    catch (RemoteException paramString)
    {
      gr.W("Could not start In-App purchase.");
    }
  }
  
  public void a(String paramString, boolean paramBoolean, int paramInt, Intent paramIntent, ef paramef)
  {
    try
    {
      if (lB.lX != null) {
        lB.lX.a(new eg(lB.lM, paramString, paramBoolean, paramInt, paramIntent, paramef));
      }
      gq.wR.postDelayed(new u.4(this, paramIntent), 500L);
      return;
    }
    catch (RemoteException paramString)
    {
      for (;;)
      {
        gr.W("Fail to invoke PlayStorePurchaseListener.");
      }
    }
  }
  
  public void a(HashSet<fz> paramHashSet)
  {
    lB.a(paramHashSet);
  }
  
  public void a(List<String> paramList)
  {
    jx.aU("setNativeTemplates must be called on the main UI thread.");
    lB.mc = paramList;
  }
  
  public boolean a(av paramav)
  {
    jx.aU("loadAd must be called on the main UI thread.");
    if ((lB.lQ != null) || (lB.lR != null))
    {
      if (lz != null) {
        gr.W("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
      }
      lz = paramav;
    }
    do
    {
      return false;
      if ((lB.lS.oq) && (lB.lT != null))
      {
        gr.W("An interstitial is already loading. Aborting.");
        return false;
      }
    } while (!au());
    gr.U("Starting ad request.");
    if (!og) {
      gr.U("Use AdRequest.Builder.addTestDevice(\"" + gq.v(lB.lM) + "\") to get test ads on this device.");
    }
    Bundle localBundle = a(ga.dc().l(lB.lM));
    lC.cancel();
    lB.mg = 0;
    paramav = a(paramav, localBundle);
    lB.lQ = ez.a(lB.lM, paramav, lB.lN, this);
    return true;
  }
  
  boolean a(fy paramfy, boolean paramBoolean)
  {
    boolean bool = false;
    Object localObject;
    if (lz != null)
    {
      localObject = lz;
      lz = null;
      if (!lB.lS.oq) {
        break label96;
      }
      if (lB.mg == 0) {
        gi.a(se);
      }
    }
    for (;;)
    {
      return lC.aD();
      av localav = tL;
      localObject = localav;
      if (extras == null) {
        break;
      }
      bool = extras.getBoolean("_noRefresh", false);
      localObject = localav;
      break;
      label96:
      if ((!(bool | paramBoolean)) && (lB.mg == 0)) {
        if (qA > 0L) {
          lC.a((av)localObject, qA);
        } else if ((vE != null) && (vE.qA > 0L)) {
          lC.a((av)localObject, vE.qA);
        } else if ((!tW) && (errorCode == 2)) {
          lC.c((av)localObject);
        }
      }
    }
  }
  
  public d ab()
  {
    jx.aU("getAdFrame must be called on the main UI thread.");
    return e.k(lB.lK);
  }
  
  public ay ac()
  {
    jx.aU("getAdSize must be called on the main UI thread.");
    return lB.lS;
  }
  
  public void af()
  {
    ap();
  }
  
  public void ag()
  {
    lD.d(lB.lT);
    if (lB.lS.oq) {
      ax();
    }
    lE = false;
    ao();
    lB.lV.cY();
  }
  
  public void ah()
  {
    if (lB.lS.oq) {
      e(false);
    }
    lE = true;
    aq();
  }
  
  public void ai()
  {
    onAdClicked();
  }
  
  public void aj()
  {
    ag();
  }
  
  public void ak()
  {
    af();
  }
  
  public void al()
  {
    ah();
  }
  
  public void am()
  {
    if (lB.lT != null) {
      gr.W("Mediation adapter " + lB.lT.qR + " refreshed, but mediation adapters should never refresh.");
    }
    e(true);
    ar();
  }
  
  public void an()
  {
    jx.aU("recordManualImpression must be called on the main UI thread.");
    if (lB.lT == null) {
      gr.W("Ad state was null when trying to ping manual tracking URLs.");
    }
    do
    {
      return;
      gr.S("Pinging manual tracking URLs.");
    } while (lB.lT.tY == null);
    gi.a(lB.lM, lB.lO.wS, lB.lT.tY);
  }
  
  public boolean au()
  {
    boolean bool = true;
    if (!gi.a(lB.lM.getPackageManager(), lB.lM.getPackageName(), "android.permission.INTERNET"))
    {
      if (!lB.lS.oq) {
        gq.a(lB.lK, lB.lS, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
      }
      bool = false;
    }
    if (!gi.p(lB.lM))
    {
      if (!lB.lS.oq) {
        gq.a(lB.lK, lB.lS, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
      }
      bool = false;
    }
    if ((!bool) && (!lB.lS.oq)) {
      lB.lK.setVisibility(0);
    }
    return bool;
  }
  
  public void av()
  {
    if (lB.lT == null) {
      gr.W("Ad state was null when trying to ping click URLs.");
    }
    do
    {
      return;
      gr.S("Pinging click URLs.");
      lB.lV.cX();
      if (lB.lT.qw != null) {
        gi.a(lB.lM, lB.lO.wS, lB.lT.qw);
      }
    } while ((lB.lT.vE == null) || (lB.lT.vE.qw == null));
    cw.a(lB.lM, lB.lO.wS, lB.lT, lB.lL, false, lB.lT.vE.qw);
  }
  
  public void aw()
  {
    e(false);
  }
  
  public void b(View paramView)
  {
    lB.mf = paramView;
    a(new fy(lB.lU, null, null, null, null, null, null));
  }
  
  public void b(av paramav)
  {
    ViewParent localViewParent = lB.lK.getParent();
    if (((localViewParent instanceof View)) && (((View)localViewParent).isShown()) && (gi.dt()) && (!lE))
    {
      a(paramav);
      return;
    }
    gr.U("Ad is not visible. Not refreshing ad.");
    lC.c(paramav);
  }
  
  public void d(boolean paramBoolean)
  {
    lB.mi = paramBoolean;
  }
  
  public void destroy()
  {
    jx.aU("destroy must be called on the main UI thread.");
    ae();
    lB.lP = null;
    lB.lW = null;
    lB.lX = null;
    lB.lY = null;
    lB.mb = null;
    lC.cancel();
    lD.stop();
    stopLoading();
    if (lB.lK != null) {
      lB.lK.removeAllViews();
    }
    if ((lB.lT != null) && (lB.lT.se != null)) {
      lB.lT.se.destroy();
    }
    if ((lB.lT != null) && (lB.lT.qQ != null)) {}
    try
    {
      lB.lT.qQ.destroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.W("Could not destroy mediation adapter.");
    }
  }
  
  public String getMediationAdapterClassName()
  {
    if (lB.lT != null) {
      return lB.lT.qR;
    }
    return null;
  }
  
  public boolean isReady()
  {
    jx.aU("isLoaded must be called on the main UI thread.");
    return (lB.lQ == null) && (lB.lR == null) && (lB.lT != null);
  }
  
  public void onAdClicked()
  {
    av();
  }
  
  public void onAppEvent(String paramString1, String paramString2)
  {
    if (lB.lW != null) {}
    try
    {
      lB.lW.onAppEvent(paramString1, paramString2);
      return;
    }
    catch (RemoteException paramString1)
    {
      gr.d("Could not call the AppEventListener.", paramString1);
    }
  }
  
  public void pause()
  {
    jx.aU("pause must be called on the main UI thread.");
    if ((lB.lT != null) && (lB.mg == 0)) {
      gi.a(lB.lT.se);
    }
    if ((lB.lT != null) && (lB.lT.qQ != null)) {}
    try
    {
      lB.lT.qQ.pause();
      lD.pause();
      lC.pause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        gr.W("Could not pause mediation adapter.");
      }
    }
  }
  
  public void resume()
  {
    jx.aU("resume must be called on the main UI thread.");
    if ((lB.lT != null) && (lB.mg == 0)) {
      gi.b(lB.lT.se);
    }
    if ((lB.lT != null) && (lB.lT.qQ != null)) {}
    try
    {
      lB.lT.qQ.resume();
      lC.resume();
      lD.resume();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        gr.W("Could not resume mediation adapter.");
      }
    }
  }
  
  public void showInterstitial()
  {
    jx.aU("showInterstitial must be called on the main UI thread.");
    if (!lB.lS.oq) {
      gr.W("Cannot call showInterstitial on a banner ad.");
    }
    do
    {
      return;
      if (lB.lT == null)
      {
        gr.W("The interstitial has not loaded.");
        return;
      }
    } while (lB.mg == 1);
    if (lB.lT.se.dH())
    {
      gr.W("The interstitial is already showing.");
      return;
    }
    lB.lT.se.z(true);
    if ((lB.lT.se.dD().dN()) || (lB.lT.vD != null))
    {
      af localaf = lD.a(lB.lS, lB.lT);
      if ((lB.lT.se.dD().dN()) && (localaf != null)) {
        localaf.a(new aa(lB.lT.se));
      }
    }
    if (lB.lT.tW) {
      try
      {
        lB.lT.qQ.showInterstitial();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        gr.d("Could not show interstitial.", localRemoteException);
        ax();
        return;
      }
    }
    y localy = new y(lB.mi, false);
    Object localObject = localy;
    boolean bool2;
    if ((lB.lM instanceof Activity))
    {
      localObject = ((Activity)lB.lM).getWindow();
      Rect localRect1 = new Rect();
      Rect localRect2 = new Rect();
      ((Window)localObject).getDecorView().getGlobalVisibleRect(localRect1);
      ((Window)localObject).getDecorView().getWindowVisibleDisplayFrame(localRect2);
      localObject = localy;
      if (bottom != 0)
      {
        localObject = localy;
        if (bottom != 0)
        {
          bool2 = lB.mi;
          if (top != top) {
            break label431;
          }
        }
      }
    }
    label431:
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject = new y(bool2, bool1);
      localObject = new dr(this, this, this, lB.lT.se, lB.lT.orientation, lB.lO, lB.lT.ub, (y)localObject);
      dp.a(lB.lM, (dr)localObject);
      return;
    }
  }
  
  public void stopLoading()
  {
    jx.aU("stopLoading must be called on the main UI thread.");
    if ((lB.lT != null) && (lB.mg == 0))
    {
      lB.lT.se.stopLoading();
      lB.lT = null;
    }
    if (lB.lQ != null) {
      lB.lQ.cancel();
    }
    if (lB.lR != null) {
      lB.lR.cancel();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */