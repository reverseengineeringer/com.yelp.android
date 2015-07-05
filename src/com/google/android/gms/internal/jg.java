package com.google.android.gms.internal;

import android.view.View;
import java.util.Collection;
import java.util.List;

public final class jg
{
  private final View JJ;
  private final jg.a Mw;
  
  public jg(String paramString1, Collection<String> paramCollection, int paramInt, View paramView, String paramString2)
  {
    Mw = new jg.a(paramString1, paramCollection, paramInt, paramString2);
    JJ = paramView;
  }
  
  public String getAccountName()
  {
    return Mw.getAccountName();
  }
  
  public String hm()
  {
    return Mw.hm();
  }
  
  public int hn()
  {
    return Mw.hn();
  }
  
  public List<String> ho()
  {
    return Mw.ho();
  }
  
  public String[] hp()
  {
    return (String[])Mw.ho().toArray(new String[0]);
  }
  
  public String hq()
  {
    return Mw.hq();
  }
  
  public View hr()
  {
    return JJ;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */