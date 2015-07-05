package com.yelp.android.util;

import java.util.Calendar;

 enum Holiday$8
{
  Holiday$8()
  {
    super(paramString, paramInt, null);
  }
  
  public int getThemeResource()
  {
    return 2131689664;
  }
  
  public boolean isActive(int paramInt1, int paramInt2, int paramInt3)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(paramInt1, paramInt2, paramInt3);
    paramInt1 = localCalendar.get(6);
    return (Holiday.access$300()) && (paramInt1 >= Holiday.access$400().get(6)) && (paramInt1 <= Holiday.access$500().get(6));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.Holiday.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */