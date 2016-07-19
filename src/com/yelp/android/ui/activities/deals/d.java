package com.yelp.android.ui.activities.deals;

import android.content.Context;
import android.content.res.TypedArray;
import com.yelp.android.b.a;
import com.yelp.android.serializable.GiftRecipient;

public class d
  extends DealQuantityViewBase
{
  private final GiftRecipient b;
  
  public d(Context paramContext)
  {
    this(paramContext, null, 2130772411);
  }
  
  public d(Context paramContext, GiftRecipient paramGiftRecipient)
  {
    this(paramContext, paramGiftRecipient, 2130772410);
  }
  
  private d(Context paramContext, GiftRecipient paramGiftRecipient, int paramInt)
  {
    super(paramContext, null, paramInt);
    b = paramGiftRecipient;
    if (b == null)
    {
      setText(paramContext.getString(2131165929));
      return;
    }
    paramContext = paramContext.obtainStyledAttributes(null, b.a.DealQuantityBaseView, paramInt, paramInt);
    setText(String.format(paramContext.getString(0), new Object[] { b.e() }));
    paramContext.recycle();
  }
  
  public GiftRecipient getRecipient()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */