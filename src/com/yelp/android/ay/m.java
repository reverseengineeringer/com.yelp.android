package com.yelp.android.ay;

public class m
{
  private final String a;
  private final String b;
  private final String c;
  
  public m(String paramString1, String paramString2, String paramString3)
  {
    a(paramString1, paramString2, paramString3);
    a = paramString1;
    b = paramString2;
    c = paramString3;
  }
  
  private void a(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("You tried to create a new ConversationDraft instance with a null userId parameter.");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("You attempted to create a new ConversationDraft instance with a null subject parameter.");
    }
    if (paramString3 == null) {
      throw new IllegalArgumentException("You attempted to create a new ConversationDraft instance with a null message parameter.");
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
  
  public String c()
  {
    return c;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof m))
    {
      paramObject = (m)paramObject;
      bool1 = bool2;
      if (a.equals(((m)paramObject).a()))
      {
        bool1 = bool2;
        if (b.equals(((m)paramObject).b()))
        {
          bool1 = bool2;
          if (c.equals(((m)paramObject).c())) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return 1 * c.hashCode() * (b.hashCode() + 7) * (a.hashCode() + 23);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */