package com.yelp.android.ui.util;

import android.content.Context;
import android.widget.Toast;

public class c
  implements ao
{
  private final Context a;
  
  public c(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("Context must not be null");
    }
    a = paramContext;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    Toast.makeText(a, paramInt1, paramInt2).show();
  }
  
  public void a(CharSequence paramCharSequence, int paramInt)
  {
    Toast.makeText(a, paramCharSequence, paramInt).show();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */