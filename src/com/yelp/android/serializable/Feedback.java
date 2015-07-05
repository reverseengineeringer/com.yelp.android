package com.yelp.android.serializable;

import android.os.Parcelable;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Feedback
  extends _Feedback
  implements Parcelable
{
  public static JsonParser.DualCreator<Feedback> CREATOR = new ar();
  public static final String NONE_FEEDBACK = "NONE";
  public static final String POSITIVE_FEEDBACK = "POSITIVE";
  
  public Feedback()
  {
    super(Collections.emptyList(), 0);
  }
  
  public Feedback(List<String> paramList, int paramInt)
  {
    super(paramList, paramInt);
  }
  
  public void addPositiveFeedback()
  {
    setFeedbackPositiveCount(mPositiveFeedbackCount + 1);
  }
  
  public boolean isLikedByUser()
  {
    return (AppData.b().m().c()) && (mFeedbackByUser.contains("POSITIVE"));
  }
  
  public void removePositiveFeedback()
  {
    setFeedbackPositiveCount(mPositiveFeedbackCount - 1);
  }
  
  public void setFeedbackPositiveCount(int paramInt)
  {
    mFeedbackByUser = new ArrayList();
    if (mPositiveFeedbackCount < paramInt) {
      mFeedbackByUser.add("POSITIVE");
    }
    for (;;)
    {
      mPositiveFeedbackCount = paramInt;
      return;
      mFeedbackByUser.add("NONE");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Feedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */