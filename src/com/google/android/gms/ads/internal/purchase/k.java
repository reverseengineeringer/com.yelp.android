package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;

@fv
public class k
{
  private final String a;
  
  public k(String paramString)
  {
    a = paramString;
  }
  
  public String a()
  {
    return s.e().c();
  }
  
  public boolean a(String paramString, int paramInt, Intent paramIntent)
  {
    if ((paramString == null) || (paramIntent == null)) {}
    String str;
    do
    {
      return false;
      str = s.o().b(paramIntent);
      paramIntent = s.o().c(paramIntent);
    } while ((str == null) || (paramIntent == null));
    if (!paramString.equals(s.o().a(str)))
    {
      gz.d("Developer payload not match.");
      return false;
    }
    if ((a != null) && (!l.a(a, str, paramIntent)))
    {
      gz.d("Fail to verify signature.");
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */