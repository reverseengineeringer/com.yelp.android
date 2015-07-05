package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.Compliment.ComplimentableItemType;
import java.util.Locale;

public final class ay
  extends av
{
  public ay(m<Compliment> paramm, Compliment paramCompliment, String paramString)
  {
    super(paramm, "compliment/send", paramCompliment);
    addPostParam("user_id", paramString);
    addPostParam("text", paramCompliment.getMessage());
    addPostParam("name", paramCompliment.getType().name().toLowerCase(Locale.US));
    if ((paramCompliment.getItem() != null) && (!TextUtils.isEmpty(getItemmKey))) {
      addPostParam(getItemmKey, paramCompliment.getComplimentableId());
    }
    a = paramCompliment;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */