package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.av.h;
import com.yelp.android.av.i;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONObject;

public class ReviewVoteRequest
  extends h
{
  private final ReviewVoteRequest.VoteType a;
  private final ReviewVoteRequest.VoteValue b;
  private final String c;
  
  public ReviewVoteRequest(i parami, ReviewVoteRequest.VoteType paramVoteType, ReviewVoteRequest.VoteValue paramVoteValue, String paramString)
  {
    super(ApiRequest.RequestType.POST, "vote/review/" + paramVoteType.name().toLowerCase(Locale.US), parami);
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Reviewid cannot be empty");
    }
    if (paramVoteValue == null) {
      throw new IllegalArgumentException(String.format("Need a valid VoteValue[%s]", new Object[] { Arrays.toString(ReviewVoteRequest.VoteValue.values()) }));
    }
    addPostParam("review_id", paramString);
    addPostParam("type", paramVoteValue.name().toLowerCase(Locale.US));
    a = paramVoteType;
    b = paramVoteValue;
    c = paramString;
  }
  
  public ReviewVoteRequest.VoteType a()
  {
    return a;
  }
  
  public ReviewVoteRequest.VoteValue b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  protected void processErrorMessage(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ReviewVoteRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */