package com.yelp.android.serializable;

public class j
{
  public static int a = 2;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private boolean g;
  private String h;
  private final boolean i;
  private final String j;
  private final i k;
  private final boolean l;
  private final int m;
  
  public j(j paramj)
  {
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
    h = h;
    j = j;
    l = l;
    i = i;
    k = null;
    m = m;
  }
  
  public j(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean1, boolean paramBoolean2, String paramString6, String paramString7, i parami, boolean paramBoolean3, int paramInt)
  {
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramString5;
    g = paramBoolean1;
    i = paramBoolean2;
    h = paramString6;
    j = paramString7;
    k = parami;
    l = paramBoolean3;
    m = paramInt;
  }
  
  public static j a(j paramj, String paramString)
  {
    return new j(paramj.a(), paramj.b(), paramj.c(), paramj.d(), paramj.e(), paramj.f(), paramj.j(), paramj.g(), paramString, paramj.k(), paramj.i(), paramj.l());
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(String paramString)
  {
    h = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public String d()
  {
    return e;
  }
  
  public String e()
  {
    return f;
  }
  
  public boolean f()
  {
    return g;
  }
  
  public String g()
  {
    return h;
  }
  
  public String h()
  {
    return j;
  }
  
  public boolean i()
  {
    return l;
  }
  
  public boolean j()
  {
    return i;
  }
  
  public i k()
  {
    return k;
  }
  
  public int l()
  {
    return m;
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
    localStringBuilder.append("name = ");
    localStringBuilder.append(d);
    localStringBuilder.append("\n");
    localStringBuilder.append("nameWithoutPeriod = ");
    localStringBuilder.append(e);
    localStringBuilder.append("\n");
    localStringBuilder.append("isConfirmed = ");
    localStringBuilder.append(g);
    localStringBuilder.append("\n");
    localStringBuilder.append("userId = ");
    localStringBuilder.append(f);
    localStringBuilder.append("\n");
    localStringBuilder.append("ismale = ");
    localStringBuilder.append(l);
    localStringBuilder.append("\n");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */