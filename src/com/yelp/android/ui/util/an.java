package com.yelp.android.ui.util;

import android.content.Context;
import android.os.CountDownTimer;
import android.text.TextUtils;
import android.widget.TextView;

public class an
  extends CountDownTimer
{
  private TextView a;
  private final int b;
  private final CharSequence c;
  private a d;
  
  public an(long paramLong, TextView paramTextView)
  {
    this(paramLong, paramTextView, null);
  }
  
  public an(long paramLong, TextView paramTextView, CharSequence paramCharSequence)
  {
    this(paramLong, paramTextView, paramCharSequence, 2131166686);
  }
  
  public an(long paramLong, TextView paramTextView, CharSequence paramCharSequence, int paramInt)
  {
    super(paramLong, 250L);
    a = paramTextView;
    b = paramInt;
    c = paramCharSequence;
  }
  
  public void a(a parama)
  {
    d = parama;
  }
  
  public void onFinish()
  {
    a.setText(a.getContext().getString(b, new Object[] { Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(0) }));
    if (d != null)
    {
      d.a();
      d = null;
    }
  }
  
  public void onTick(long paramLong)
  {
    int i = (int)paramLong / 1000;
    String str = a.getContext().getString(b, new Object[] { Integer.valueOf(i / 3600), Integer.valueOf(i % 3600 / 60), Integer.valueOf(i % 60) });
    Object localObject = str;
    if (!TextUtils.isEmpty(c)) {
      localObject = TextUtils.expandTemplate(c, new CharSequence[] { str });
    }
    a.setText((CharSequence)localObject);
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */