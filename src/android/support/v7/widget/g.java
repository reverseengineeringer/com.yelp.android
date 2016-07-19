package android.support.v7.widget;

import android.view.View;

class g
{
  int a;
  int b;
  int c;
  int d;
  int e = 0;
  int f = 0;
  
  View a(RecyclerView.n paramn)
  {
    paramn = paramn.c(b);
    b += c;
    return paramn;
  }
  
  boolean a(RecyclerView.r paramr)
  {
    return (b >= 0) && (b < paramr.e());
  }
  
  public String toString()
  {
    return "LayoutState{mAvailable=" + a + ", mCurrentPosition=" + b + ", mItemDirection=" + c + ", mLayoutDirection=" + d + ", mStartLine=" + e + ", mEndLine=" + f + '}';
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */