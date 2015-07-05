package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class f
  extends aj
{
  private static final String ID = a.w.toString();
  private final Context mContext;
  
  public f(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    return di.u(mContext.getPackageName());
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */