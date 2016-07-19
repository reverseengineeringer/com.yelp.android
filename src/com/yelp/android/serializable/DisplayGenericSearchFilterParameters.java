package com.yelp.android.serializable;

import android.graphics.Color;
import android.text.TextUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Arrays;

public class DisplayGenericSearchFilterParameters
  extends _DisplayGenericSearchFilterParameters
{
  public static final JsonParser.DualCreator<DisplayGenericSearchFilterParameters> CREATOR = new DisplayGenericSearchFilterParameters.1();
  
  public int a()
  {
    return Color.rgb(d[0], d[1], d[2]);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (paramObject == null);
          bool1 = bool2;
        } while (getClass() != paramObject.getClass());
        paramObject = (DisplayGenericSearchFilterParameters)paramObject;
        bool1 = bool2;
      } while (c() != ((DisplayGenericSearchFilterParameters)paramObject).c());
      bool1 = bool2;
    } while (!TextUtils.equals(d(), ((DisplayGenericSearchFilterParameters)paramObject).d()));
    return Arrays.equals(b(), ((DisplayGenericSearchFilterParameters)paramObject).b());
  }
  
  public int hashCode()
  {
    int k = 0;
    int i;
    if (d() != null)
    {
      i = d().hashCode();
      if (!c()) {
        break label58;
      }
    }
    label58:
    for (int j = 1;; j = 0)
    {
      if (b() != null) {
        k = Arrays.hashCode(b());
      }
      return (j + i * 31) * 31 + k;
      i = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.DisplayGenericSearchFilterParameters
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */