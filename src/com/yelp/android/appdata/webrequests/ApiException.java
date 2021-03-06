package com.yelp.android.appdata.webrequests;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"ParcelCreator"})
public class ApiException
  extends YelpException
{
  public static final Parcelable.Creator<ApiException> CREATOR = new Parcelable.Creator()
  {
    public ApiException a(Parcel paramAnonymousParcel)
    {
      int i = paramAnonymousParcel.readInt();
      paramAnonymousParcel = paramAnonymousParcel.readString();
      if (!TextUtils.isEmpty(paramAnonymousParcel)) {}
      for (;;)
      {
        try
        {
          paramAnonymousParcel = new JSONObject(paramAnonymousParcel);
          return new ApiException(i, paramAnonymousParcel, null);
        }
        catch (JSONException paramAnonymousParcel)
        {
          paramAnonymousParcel = null;
          continue;
        }
        paramAnonymousParcel = null;
      }
    }
    
    public ApiException[] a(int paramAnonymousInt)
    {
      return new ApiException[paramAnonymousInt];
    }
  };
  public static final int YPAPICodeAccountUnconfirmed = 11;
  public static final int YPAPICodeAlreadyFriend = 1003;
  public static final int YPAPICodeAreaTooLarge = 203;
  public static final int YPAPICodeBadBusinessId = 206;
  public static final int YPAPICodeBadCategory = 205;
  public static final int YPAPICodeBadFindLocation = 202;
  public static final int YPAPICodeBadLocation = 102;
  public static final int YPAPICodeBadNeighborhood = 204;
  public static final int YPAPICodeBlockedUser = 1021;
  public static final int YPAPICodeCheckInOfferAlreadyUsed = 1018;
  public static final int YPAPICodeCheckInTooFarAway = 1010;
  public static final int YPAPICodeCheckInTooMany = 1016;
  public static final int YPAPICodeCheckInTooRecent = 1011;
  public static final int YPAPICodeCheckInTooRecentAtBusiness = 1017;
  public static final int YPAPICodeCheckInUserIsNotFriend = 1024;
  public static final int YPAPICodeCreditCardExpired = 1202;
  public static final int YPAPICodeDealStaleUpdateTimeError = 1302;
  public static final int YPAPICodeDuplicateRequest = 16;
  public static final int YPAPICodeEmailAlreadyConfirmed = 402;
  public static final int YPAPICodeEmailAlreadyExists = 401;
  public static final int YPAPICodeEmailForDifferentUser = 404;
  public static final int YPAPICodeEmailNoAccount = 400;
  public static final int YPAPICodeFriendRequestNotFound = 1005;
  public static final int YPAPICodeFriendRequestPending = 1004;
  public static final int YPAPICodeGeneralError = 6;
  public static final int YPAPICodeInvalidCharacter = 208;
  public static final int YPAPICodeInvalidCredentials = 10;
  public static final int YPAPICodeInvalidParameter = 12;
  public static final int YPAPICodeInvalidParametersPlural = 19;
  public static final int YPAPICodeInvalidSessionToken = 9;
  public static final int YPAPICodeInvalidSignature = 13;
  public static final int YPAPICodeMissingParameter = 8;
  public static final int YPAPICodeMultipleLocations = 209;
  public static final int YPAPICodeNoCountrySupport = 105;
  public static final int YPAPICodeNotAvailable = 5;
  public static final int YPAPICodeOK = 0;
  public static final int YPAPICodeOperationLimitExceeded = 800;
  public static final int YPAPICodeOperationUnsupported = 15;
  public static final int YPAPICodeOtherUserTooPopular = 1001;
  public static final int YPAPICodePasswordTooLong = 14;
  public static final int YPAPICodeSameUser = 1000;
  public static final int YPAPICodeSharingAlreadyShared = 1015;
  public static final int YPAPICodeSharingError = 1014;
  public static final int YPAPICodeSharingInvalidFacebookSession = 1012;
  public static final int YPAPICodeSharingInvalidTwitterSession = 1013;
  public static final int YPAPICodeSharingRequireFacebookPermission = 1026;
  public static final int YPAPICodeTalkNoCursing = 902;
  public static final int YPAPICodeTalkRateLimited = 900;
  public static final int YPAPICodeTalkTopicIsTooOldToReply = 903;
  public static final int YPAPICodeTalkTopicRemoved = 904;
  public static final int YPAPICodeTalkUserBanned = 901;
  public static final int YPAPICodeTextTooLong = 207;
  public static final int YPAPICodeUnknown = -1;
  public static final int YPAPICodeUnspecLocation = 200;
  public static final int YPAPICodeUpgrade = 7;
  public static final int YPAPICodeUserAccountClosed = 1006;
  public static final int YPAPICodeUserTooPopular = 1002;
  public static final int YPAPIEventRsvpCannotModify = 1700;
  private static final int[] a = { 16 };
  private static final long serialVersionUID = 1L;
  private final JSONObject mMessage;
  private final int mResultCode;
  
  static
  {
    Arrays.sort(a);
  }
  
  private ApiException(int paramInt, JSONObject paramJSONObject)
  {
    super(a(paramInt));
    mResultCode = paramInt;
    mMessage = paramJSONObject;
  }
  
  private static int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 2131165375;
    case 5: 
      return 2131165361;
    case 102: 
      return 2131165344;
    case 203: 
      return 2131165340;
    case 204: 
      return 2131165345;
    case 205: 
      return 2131165342;
    case 200: 
      return 2131165376;
    case 202: 
      return 2131165343;
    case 206: 
      return 2131165341;
    case 209: 
      return 2131165360;
    case 7: 
      return 2131165377;
    case 9: 
      return 2131165358;
    case 10: 
      return 2131165356;
    case 11: 
      return 2131165338;
    case 14: 
      return 2131165365;
    case 400: 
      return 2131165352;
    case 401: 
      return 2131165351;
    case 800: 
      return 2131165362;
    case 902: 
      return 2131165368;
    case 900: 
      return 2131165369;
    case 901: 
      return 2131165372;
    case 903: 
      return 2131165370;
    case 904: 
      return 2131165371;
    case 207: 
      return 2131165373;
    case 208: 
      return 2131165354;
    case 1010: 
      return 2131165346;
    case 1011: 
      return 2131165348;
    case 1016: 
      return 2131165347;
    case 1012: 
      return 2131165357;
    case 1013: 
      return 2131165359;
    case 1014: 
      return 2131165367;
    case 1001: 
      return 2131165364;
    case 1002: 
      return 2131165379;
    case 1003: 
      return 2131165339;
    case 1005: 
      return 2131165366;
    case 1004: 
      return 2131165353;
    case 15: 
      return 2131165363;
    case 1017: 
      return 2131165349;
    case 1006: 
      return 2131165378;
    }
    return 2131165390;
  }
  
  public static final ApiException getExceptionForCode(int paramInt, JSONObject paramJSONObject)
  {
    paramJSONObject = new ApiException(paramInt, paramJSONObject);
    if (Arrays.binarySearch(a, paramInt) >= 0) {
      paramJSONObject.setIsRecoverable(true);
    }
    return paramJSONObject;
  }
  
  public static boolean isUserBlocked(YelpException paramYelpException)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramYelpException instanceof ApiException))
    {
      bool1 = bool2;
      if (((ApiException)paramYelpException).getResultCode() == 1021) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public String getMessage(Context paramContext)
  {
    if ((mMessage != null) && (!mMessage.isNull("localized_description"))) {
      return mMessage.optString("localized_description");
    }
    if ((mMessage == null) || ((mResultCode == 208) && (!mMessage.isNull("char")))) {
      return paramContext.getString(2131165355, new Object[] { mMessage.optString("char") });
    }
    return super.getMessage(paramContext);
  }
  
  public int getResultCode()
  {
    return mResultCode;
  }
  
  public JSONObject getServerMessage()
  {
    return mMessage;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(mResultCode);
    if (mMessage == null) {}
    for (String str = "";; str = mMessage.toString())
    {
      paramParcel.writeString(str);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ApiException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */