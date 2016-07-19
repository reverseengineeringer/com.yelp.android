package com.yelp.android.f;

abstract class e$d
  implements d
{
  private final e.c a;
  
  public e$d(e.c paramc)
  {
    a = paramc;
  }
  
  private boolean b(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    switch (a.a(paramCharSequence, paramInt1, paramInt2))
    {
    default: 
      return a();
    case 0: 
      return true;
    }
    return false;
  }
  
  protected abstract boolean a();
  
  public boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if ((paramCharSequence == null) || (paramInt1 < 0) || (paramInt2 < 0) || (paramCharSequence.length() - paramInt2 < paramInt1)) {
      throw new IllegalArgumentException();
    }
    if (a == null) {
      return a();
    }
    return b(paramCharSequence, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.e.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */