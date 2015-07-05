package com.google.android.gms.tagmanager;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class cj
  extends aj
{
  private static final String ID = a.S.toString();
  private final Context mContext;
  
  public cj(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    paramMap = new DisplayMetrics();
    ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(paramMap);
    int i = widthPixels;
    int j = heightPixels;
    return di.u(i + "x" + j);
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */