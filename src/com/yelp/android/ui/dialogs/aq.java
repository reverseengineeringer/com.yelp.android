package com.yelp.android.ui.dialogs;

import android.text.TextUtils;
import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;

class aq
  implements Comparator<ap>
{
  private final Locale a;
  private final Locale b;
  private final Collator c;
  
  public aq(Locale paramLocale1, Locale paramLocale2)
  {
    a = paramLocale2;
    b = paramLocale1;
    c = Collator.getInstance(paramLocale1);
  }
  
  private boolean a(ap paramap)
  {
    if (a == null) {
      return false;
    }
    return TextUtils.equals(a.getCountry(), a.getCountry());
  }
  
  private boolean b(ap paramap)
  {
    return TextUtils.equals(a.getCountry(), b.getCountry());
  }
  
  public int a(ap paramap1, ap paramap2)
  {
    if (a(paramap1)) {}
    do
    {
      return -1;
      if (a(paramap2)) {
        return 1;
      }
    } while (b(paramap1));
    if (b(paramap2)) {
      return 1;
    }
    return c.compare(a.getDisplayCountry(b), a.getDisplayCountry(b));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */