package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class cv
  extends aj
{
  private static final String ID = a.U.toString();
  
  public cv()
  {
    super(ID, new String[0]);
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    return di.u(Integer.valueOf(Build.VERSION.SDK_INT));
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */