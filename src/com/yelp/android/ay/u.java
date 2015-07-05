package com.yelp.android.ay;

import com.yelp.android.database.ColumnModifier;
import com.yelp.android.database.ColumnType;
import com.yelp.android.database.aa;
import com.yelp.android.database.ab;
import com.yelp.android.database.p;
import com.yelp.android.database.y;

class u
  extends y
{
  public aa a()
  {
    return new ab("messaging_message_to_business_drafts").a(new p("business_id", ColumnType.TEXT, ColumnModifier.PRIMARY_KEY_NOT_NULL)).a(new p("draft", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a();
  }
  
  public int b()
  {
    return 15;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */