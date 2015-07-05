package com.yelp.android.util;

 enum Holiday$7
{
  Holiday$7()
  {
    super(paramString, paramInt, null);
  }
  
  public int getThemeResource()
  {
    return 2131689969;
  }
  
  public boolean isActive(int paramInt1, int paramInt2, int paramInt3)
  {
    return (!PRIDE_WEEKEND.isActive(paramInt1, paramInt2, paramInt3)) && (paramInt1 == 2014) && (((paramInt2 == 5) && (paramInt3 > 11)) || ((paramInt2 == 6) && (paramInt3 < 14)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.Holiday.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */