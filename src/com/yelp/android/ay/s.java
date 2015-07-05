package com.yelp.android.ay;

import com.yelp.android.database.ColumnModifier;
import com.yelp.android.database.ColumnType;
import com.yelp.android.database.aa;
import com.yelp.android.database.ab;
import com.yelp.android.database.p;
import com.yelp.android.database.y;

class s
  extends y
{
  public aa a()
  {
    return new ab("messaging_conversation_message_drafts").a(new p("conversation_id", ColumnType.TEXT, ColumnModifier.PRIMARY_KEY_NOT_NULL)).a(new p("draft", ColumnType.TEXT, ColumnModifier.NOT_NULL)).a();
  }
  
  public int b()
  {
    return 13;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ay.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */