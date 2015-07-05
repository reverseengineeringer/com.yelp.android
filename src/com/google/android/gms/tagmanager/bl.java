package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings.Secure;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.d.a;
import java.util.Map;

class bl
  extends aj
{
  private static final String ID = a.af.toString();
  private final Context mContext;
  
  public bl(Context paramContext)
  {
    super(ID, new String[0]);
    mContext = paramContext;
  }
  
  public d.a B(Map<String, d.a> paramMap)
  {
    paramMap = Y(mContext);
    if (paramMap == null) {
      return di.rb();
    }
    return di.u(paramMap);
  }
  
  protected String Y(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }
  
  public boolean pe()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */