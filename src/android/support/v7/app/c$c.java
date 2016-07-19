package android.support.v7.app;

import android.content.Context;
import android.widget.ArrayAdapter;

class c$c
  extends ArrayAdapter<CharSequence>
{
  public c$c(Context paramContext, int paramInt1, int paramInt2, CharSequence[] paramArrayOfCharSequence)
  {
    super(paramContext, paramInt1, paramInt2, paramArrayOfCharSequence);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public boolean hasStableIds()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */