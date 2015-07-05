package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class h
  extends aj
{
  private static final String ID = a.y.toString();
  private final Context mContext;
  
  public h(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    try
    {
      paramMap = di.u(Integer.valueOf(mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0).versionCode));
      return paramMap;
    }
    catch (PackageManager.NameNotFoundException paramMap)
    {
      bh.T("Package name " + mContext.getPackageName() + " not found. " + paramMap.getMessage());
    }
    return di.rb();
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */