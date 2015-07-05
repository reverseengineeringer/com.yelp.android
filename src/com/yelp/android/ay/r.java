package com.yelp.android.ay;

public class r
{
  private final String a;
  private final String b;
  
  public r(String paramString1, String paramString2)
  {
    a(paramString1, paramString2);
    a = paramString1;
    b = paramString2;
  }
  
  private void a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("You tried to create a new MessageDraft instance with a null conversationId parameter.");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("You attempted to create a new MessageDraft instance with a null message parameter.");
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
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof r))
    {
      paramObject = (r)paramObject;
      bool1 = bool2;
      if (a.equals(((r)paramObject).a()))
      {
        bool1 = bool2;
        if (b.equals(((r)paramObject).b())) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return 1 * b.hashCode() * (a.hashCode() + 23);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */