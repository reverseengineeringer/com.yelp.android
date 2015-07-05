package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

class ci
  extends dd
{
  private static final String ID = a.ap.toString();
  private static final String asy = b.dc.toString();
  
  public ci()
  {
    super(ID);
  }
  
  protected boolean a(String paramString1, String paramString2, Map<String, d.a> paramMap)
  {
    if (di.n((d.a)paramMap.get(asy)).booleanValue()) {}
    for (int i = 66;; i = 64) {
      try
      {
        boolean bool = Pattern.compile(paramString2, i).matcher(paramString1).find();
        return bool;
      }
      catch (PatternSyntaxException paramString1)
      {
        return false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */