package android.support.v7.internal.widget;

import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import com.yelp.android.g.e;

class o$a
  extends e<Integer, PorterDuffColorFilter>
{
  public o$a(int paramInt)
  {
    super(paramInt);
  }
  
  private static int b(int paramInt, PorterDuff.Mode paramMode)
  {
    return (paramInt + 31) * 31 + paramMode.hashCode();
  }
  
  PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
  {
    return (PorterDuffColorFilter)get(Integer.valueOf(b(paramInt, paramMode)));
  }
  
  PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode, PorterDuffColorFilter paramPorterDuffColorFilter)
  {
    return (PorterDuffColorFilter)put(Integer.valueOf(b(paramInt, paramMode)), paramPorterDuffColorFilter);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.o.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */