package com.yelp.android.bp;

public class b
{
  private static a a = new a()
  {
    public void a(String paramAnonymousString, Object... paramAnonymousVarArgs) {}
    
    public void a(Throwable paramAnonymousThrowable, String paramAnonymousString, Object... paramAnonymousVarArgs) {}
    
    public boolean a()
    {
      return false;
    }
    
    public void b(String paramAnonymousString, Object... paramAnonymousVarArgs) {}
  };
  
  public static void a(a parama)
  {
    a = parama;
  }
  
  public static void a(String paramString, Object... paramVarArgs)
  {
    a.a(paramString, paramVarArgs);
  }
  
  public static void a(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    a.a(paramThrowable, paramString, paramVarArgs);
  }
  
  public static boolean a()
  {
    return a.a();
  }
  
  public static void b(String paramString, Object... paramVarArgs)
  {
    a.b(paramString, paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bp.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */