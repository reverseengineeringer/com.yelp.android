package com.yelp.android.ay;

import android.text.TextUtils;

public class t
{
  private final String a;
  private final String b;
  
  protected t(t paramt)
  {
    this(paramt.a(), paramt.b());
  }
  
  public t(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
    c();
  }
  
  private void c()
  {
    if (TextUtils.isEmpty(a)) {
      throw new IllegalArgumentException("You cannot make a new MessageTheBusinessDraft instance with a null or empty businessId parameter.");
    }
    if (b == null) {
      throw new IllegalArgumentException("You cannot make a new MessageTheBusinessDraft instance with a null message parameter.");
    }
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof t)) {
        break;
      }
      paramObject = (t)paramObject;
    } while ((a.equals(((t)paramObject).a())) && (b.equals(((t)paramObject).b())));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return 1 * b.hashCode() * (a.hashCode() + 11);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */