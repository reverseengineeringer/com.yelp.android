package com.yelp.android.serializable;

import java.util.Date;
import java.util.UUID;

public class Tip$TempTip
  extends Tip
{
  public Tip$TempTip()
  {
    f = "";
    a = UUID.randomUUID().toString();
    i = "";
    b = new Date();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Tip.TempTip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */