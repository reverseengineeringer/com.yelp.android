package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentType;
import com.yelp.android.serializable.Compliment.ComplimentableItemType;
import java.util.Locale;

public final class as$c
  extends as
{
  public as$c(ApiRequest.b<Compliment> paramb, Compliment paramCompliment, String paramString)
  {
    super(paramb, "compliment/send", paramCompliment);
    b("user_id", paramString);
    b("text", paramCompliment.q());
    b("name", paramCompliment.k().name().toLowerCase(Locale.US));
    if ((paramCompliment.j() != null) && (!TextUtils.isEmpty(jmKey))) {
      b(jmKey, paramCompliment.n());
    }
    a = paramCompliment;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.as.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */