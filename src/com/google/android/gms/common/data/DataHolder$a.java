package com.google.android.gms.common.data;

import com.google.android.gms.internal.jx;
import java.util.ArrayList;
import java.util.HashMap;

public class DataHolder$a
{
  private final String[] Ld;
  private final ArrayList<HashMap<String, Object>> Lm;
  private final String Ln;
  private final HashMap<Object, Integer> Lo;
  private boolean Lp;
  private String Lq;
  
  private DataHolder$a(String[] paramArrayOfString, String paramString)
  {
    Ld = ((String[])jx.i(paramArrayOfString));
    Lm = new ArrayList();
    Ln = paramString;
    Lo = new HashMap();
    Lp = false;
    Lq = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.DataHolder.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */