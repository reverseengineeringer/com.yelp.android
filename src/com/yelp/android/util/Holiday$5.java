package com.yelp.android.util;

import java.util.Calendar;

 enum Holiday$5
{
  Holiday$5()
  {
    super(paramString, paramInt, null);
  }
  
  public int getThemeResource()
  {
    return 2131689995;
  }
  
  public boolean isActive(int paramInt1, int paramInt2, int paramInt3)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(paramInt1, paramInt2, paramInt3);
    paramInt1 = localCalendar.get(6);
    return (paramInt1 >= Holiday.access$100().get(6)) && (paramInt1 <= Holiday.access$200().get(6));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.Holiday.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */