package com.yelp.android.f;

class e$b
  implements e.c
{
  public static final b a = new b();
  
  public int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int j = 2;
    int i = paramInt1;
    while ((i < paramInt1 + paramInt2) && (j == 2))
    {
      j = e.a(Character.getDirectionality(paramCharSequence.charAt(i)));
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.e.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */