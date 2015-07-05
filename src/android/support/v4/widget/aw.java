package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public abstract class aw
  extends i
{
  private int j;
  private int k;
  private LayoutInflater l;
  
  public aw(Context paramContext, int paramInt, Cursor paramCursor, boolean paramBoolean)
  {
    super(paramContext, paramCursor, paramBoolean);
    k = paramInt;
    j = paramInt;
    l = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return l.inflate(j, paramViewGroup, false);
  }
  
  public View b(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return l.inflate(k, paramViewGroup, false);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */