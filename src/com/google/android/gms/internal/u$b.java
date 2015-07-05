package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import java.util.HashSet;
import java.util.List;

@ey
class u$b
{
  public final u.a lK;
  public final String lL;
  public final Context lM;
  public final k lN;
  public final gs lO;
  public bc lP;
  public gf lQ;
  public gf lR;
  public ay lS;
  public fy lT;
  public fy.a lU;
  public fz lV;
  public bf lW;
  public er lX;
  public en lY;
  public by lZ;
  public bz ma;
  public br mb;
  public List<String> mc;
  public ek md;
  public gd me = null;
  public View mf = null;
  public int mg = 0;
  public boolean mh = false;
  public boolean mi = false;
  private HashSet<fz> mj = null;
  
  public u$b(Context paramContext, ay paramay, String paramString, gs paramgs)
  {
    if (oq) {
      lK = null;
    }
    for (;;)
    {
      lS = paramay;
      lL = paramString;
      lM = paramContext;
      lO = paramgs;
      lN = new k(new x(this));
      return;
      lK = new u.a(paramContext);
      lK.setMinimumWidth(widthPixels);
      lK.setMinimumHeight(heightPixels);
      lK.setVisibility(4);
    }
  }
  
  public void a(HashSet<fz> paramHashSet)
  {
    mj = paramHashSet;
  }
  
  public HashSet<fz> ay()
  {
    return mj;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.u.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */