package com.comscore.utils;

import android.graphics.Point;
import android.os.Build.VERSION;
import android.view.Display;

public class a
{
  public static Point a(Display paramDisplay)
  {
    Point localPoint = new Point();
    if (Build.VERSION.SDK_INT >= 13) {
      paramDisplay.getSize(localPoint);
    }
    return localPoint;
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */