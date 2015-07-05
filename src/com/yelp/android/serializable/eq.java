package com.yelp.android.serializable;

public class eq
{
  public static int a = 2;
  private final String b;
  private final String c;
  private final String d;
  private boolean e;
  private final boolean f;
  private final String g;
  private final String h;
  private final ep i;
  private final boolean j;
  private final int k;
  
  public eq(eq parameq)
  {
    b = b;
    c = c;
    d = d;
    e = e;
    g = g;
    h = h;
    j = j;
    f = f;
    i = null;
    k = k;
  }
  
  public eq(String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2, String paramString4, String paramString5, ep paramep, boolean paramBoolean3, int paramInt)
  {
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramBoolean1;
    f = paramBoolean2;
    g = paramString4;
    h = paramString5;
    i = paramep;
    j = paramBoolean3;
    k = paramInt;
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public boolean d()
  {
    return e;
  }
  
  public String e()
  {
    return g;
  }
  
  public String f()
  {
    return h;
  }
  
  public boolean g()
  {
    return j;
  }
  
  public boolean h()
  {
    return f;
  }
  
  public int i()
  {
    return k;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(512);
    localStringBuilder.append("firstName = ");
    localStringBuilder.append(b);
    localStringBuilder.append("\n");
    localStringBuilder.append("lastName = ");
    localStringBuilder.append(c);
    localStringBuilder.append("\n");
    localStringBuilder.append("isConfirmed = ");
    localStringBuilder.append(e);
    localStringBuilder.append("\n");
    localStringBuilder.append("userId = ");
    localStringBuilder.append(d);
    localStringBuilder.append("\n");
    localStringBuilder.append("ismale = ");
    localStringBuilder.append(j);
    localStringBuilder.append("\n");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */