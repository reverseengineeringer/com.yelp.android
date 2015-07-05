package android.support.v7.internal.widget;

import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import com.yelp.android.e.f;

class be
  extends f<Integer, PorterDuffColorFilter>
{
  public be(int paramInt)
  {
    super(paramInt);
  }
  
  private static int b(int paramInt, PorterDuff.Mode paramMode)
  {
    return (paramInt + 31) * 31 + paramMode.hashCode();
  }
  
  PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
  {
    return (PorterDuffColorFilter)a(Integer.valueOf(b(paramInt, paramMode)));
  }
  
  PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode, PorterDuffColorFilter paramPorterDuffColorFilter)
  {
    return (PorterDuffColorFilter)a(Integer.valueOf(b(paramInt, paramMode)), paramPorterDuffColorFilter);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */