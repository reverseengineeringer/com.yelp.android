package com.yelp.android.util;

 enum Holiday$4
{
  Holiday$4()
  {
    super(paramString, paramInt, null);
  }
  
  public int getThemeResource()
  {
    return 2131689606;
  }
  
  public boolean isActive(int paramInt1, int paramInt2, int paramInt3)
  {
    return ((paramInt2 == 9) && (paramInt3 >= 19)) || ((paramInt2 == 10) && (paramInt3 < 1));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.Holiday.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */