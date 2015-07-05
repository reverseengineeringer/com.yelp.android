package com.yelp.android.ui.activities.deals;

import android.content.Context;
import android.content.res.TypedArray;
import com.yelp.android.b;
import com.yelp.android.serializable.GiftRecipient;

public class be
  extends DealQuantityViewBase
{
  private final GiftRecipient b;
  
  public be(Context paramContext)
  {
    this(paramContext, null, 2130772305);
  }
  
  public be(Context paramContext, GiftRecipient paramGiftRecipient)
  {
    this(paramContext, paramGiftRecipient, 2130772304);
  }
  
  private be(Context paramContext, GiftRecipient paramGiftRecipient, int paramInt)
  {
    super(paramContext, null, paramInt);
    b = paramGiftRecipient;
    if (b == null)
    {
      setText(paramContext.getString(2131165842));
      return;
    }
    paramContext = paramContext.obtainStyledAttributes(null, b.DealQuantityBaseView, paramInt, paramInt);
    setText(String.format(paramContext.getString(0), new Object[] { b.getName() }));
    paramContext.recycle();
  }
  
  public GiftRecipient getRecipient()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */