package com.yelp.android.serializable;

import android.os.Parcel;
import android.text.SpannableString;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Locale;
import org.json.JSONObject;

public class RichSearchSuggestion
  extends _RichSearchSuggestion
{
  public static final JsonParser.DualCreator<RichSearchSuggestion> CREATOR = new cv();
  protected RichSearchSuggestion.RichSearchSuggestionType mRichSearchSuggestionType;
  protected SpannableString mStyledTerm;
  
  public RichSearchSuggestion() {}
  
  public RichSearchSuggestion(RichSearchSuggestion.RichSearchSuggestionType paramRichSearchSuggestionType, String paramString1, String paramString2, String paramString3)
  {
    mSuggestionTypeString = RichSearchSuggestion.RichSearchSuggestionType.access$000(paramRichSearchSuggestionType);
    mRichSearchSuggestionType = paramRichSearchSuggestionType;
    mTerm = paramString1;
    mImagePath = paramString2;
    mAlias = paramString3;
  }
  
  public static RichSearchSuggestion instantiateCommonSuggestion(String paramString)
  {
    RichSearchSuggestion localRichSearchSuggestion = new RichSearchSuggestion();
    mTerm = paramString;
    mSuggestionTypeString = RichSearchSuggestion.RichSearchSuggestionType.access$000(RichSearchSuggestion.RichSearchSuggestionType.COMMON);
    mRichSearchSuggestionType = RichSearchSuggestion.RichSearchSuggestionType.COMMON;
    return localRichSearchSuggestion;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof RichSearchSuggestion))
    {
      paramObject = (RichSearchSuggestion)paramObject;
      RichSearchSuggestion.RichSearchSuggestionType localRichSearchSuggestionType1 = ((RichSearchSuggestion)paramObject).getRichSearchSuggestionType();
      RichSearchSuggestion.RichSearchSuggestionType localRichSearchSuggestionType2 = getRichSearchSuggestionType();
      boolean bool = getTerm().toLowerCase(Locale.getDefault()).equals(((RichSearchSuggestion)paramObject).getTerm().toLowerCase(Locale.getDefault()));
      if ((localRichSearchSuggestionType2 == RichSearchSuggestion.RichSearchSuggestionType.BUSINESS) && (localRichSearchSuggestionType1 == RichSearchSuggestion.RichSearchSuggestionType.BUSINESS)) {}
      for (int i = 1; (bool) && (localRichSearchSuggestionType2.equals(localRichSearchSuggestionType1)) && (i == 0); i = 0) {
        return true;
      }
      return false;
    }
    return false;
  }
  
  public RichSearchSuggestion.RichSearchSuggestionType getRichSearchSuggestionType()
  {
    return mRichSearchSuggestionType;
  }
  
  public SpannableString getStyledTerm()
  {
    return mStyledTerm;
  }
  
  public int hashCode()
  {
    return getTerm().toLowerCase(Locale.getDefault()).hashCode() + 31;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mRichSearchSuggestionType = RichSearchSuggestion.RichSearchSuggestionType.access$100(mSuggestionTypeString);
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mRichSearchSuggestionType = RichSearchSuggestion.RichSearchSuggestionType.access$100(mSuggestionTypeString);
  }
  
  public void setStyledTerm(SpannableString paramSpannableString)
  {
    mStyledTerm = paramSpannableString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.RichSearchSuggestion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */