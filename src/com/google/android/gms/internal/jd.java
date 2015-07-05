package com.google.android.gms.internal;

import android.accounts.Account;
import android.text.TextUtils;

public class jd
  extends jq.a
{
  private Account CR;
  
  public jd(Account paramAccount)
  {
    CR = paramAccount;
  }
  
  public static jd aT(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (paramString = null;; paramString = new Account(paramString, "com.google")) {
      return new jd(paramString);
    }
  }
  
  public Account hk()
  {
    return CR;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */