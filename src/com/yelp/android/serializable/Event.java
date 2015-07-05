package com.yelp.android.serializable;

import android.content.Context;
import android.location.Location;
import android.text.Html;
import android.text.TextUtils;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.services.r;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import com.yelp.android.util.o;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;

public class Event
  extends _Event
  implements by
{
  public static final JsonParser.DualCreator<Event> CREATOR = new ai();
  public static final String EXTRA_EVENT = "extra.event";
  private static final String NEWLINE = "<br>";
  
  private void assignBusinessToEvent(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    for (paramJSONObject = null;; paramJSONObject = (YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject))
    {
      mBusiness = paramJSONObject;
      return;
    }
  }
  
  private void assignUserToEvent(JSONObject paramJSONObject)
  {
    mUser = ((User)User.CREATOR.parse(paramJSONObject));
  }
  
  public static ArrayList<Event> buildEventsFromJSONResponse(JSONArray paramJSONArray1, JSONArray paramJSONArray2, JSONArray paramJSONArray3)
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONArray1, CREATOR);
    int i = 0;
    if (i < localArrayList.size())
    {
      Event localEvent = (Event)localArrayList.get(i);
      if (!paramJSONArray3.isNull(i)) {}
      for (paramJSONArray1 = paramJSONArray3.getJSONObject(i);; paramJSONArray1 = null)
      {
        localEvent.assignBusinessToEvent(paramJSONArray1);
        localEvent.assignUserToEvent(paramJSONArray2.getJSONObject(i));
        i += 1;
        break;
      }
    }
    return localArrayList;
  }
  
  private String costToString(double paramDouble)
  {
    Currency localCurrency = Currency.getInstance(mCurrencyCode);
    NumberFormat localNumberFormat = NumberFormat.getCurrencyInstance();
    localNumberFormat.setCurrency(localCurrency);
    if (Math.abs(paramDouble - Math.floor(paramDouble)) < 0.01D) {}
    for (int i = 0;; i = 2)
    {
      localNumberFormat.setMaximumFractionDigits(i);
      return localNumberFormat.format(paramDouble);
    }
  }
  
  public static Event eventFromJSONObject(JSONObject paramJSONObject1, JSONObject paramJSONObject2, JSONObject paramJSONObject3)
  {
    paramJSONObject1 = (Event)CREATOR.parse(paramJSONObject1);
    paramJSONObject1.assignBusinessToEvent(paramJSONObject3);
    paramJSONObject1.assignUserToEvent(paramJSONObject2);
    return paramJSONObject1;
  }
  
  private double getDistance(Location paramLocation)
  {
    if ((Double.isNaN(getLongitude())) || (Double.isNaN(getLatitude())) || (paramLocation == null)) {
      return NaN.0D;
    }
    return o.a(getLatitude(), getLongitude(), paramLocation.getLatitude(), paramLocation.getLongitude());
  }
  
  private String getDistanceFormatted(Location paramLocation, Context paramContext, StringUtils.Format paramFormat)
  {
    if ((Double.isNaN(getLongitude())) || (Double.isNaN(getLatitude())) || (!o.a(paramLocation))) {
      return null;
    }
    return StringUtils.a(getDistance(paramLocation), paramLocation.getAccuracy(), paramFormat, paramContext);
  }
  
  private String getFormattedTimeEnd(Context paramContext)
  {
    TimeZone localTimeZone = TimeZone.getTimeZone(getTimezone());
    return String.format("%s, %s", new Object[] { r.a(paramContext, localTimeZone, getTimeEnd()), r.a(paramContext.getString(2131165791), localTimeZone, getTimeEnd()) });
  }
  
  private String getFormattedTimeStart(Context paramContext)
  {
    TimeZone localTimeZone = TimeZone.getTimeZone(getTimezone());
    return String.format("%s, %s", new Object[] { r.a(paramContext, localTimeZone, getTimeStart()), r.a(paramContext.getString(2131165791), localTimeZone, getTimeStart()) });
  }
  
  private boolean isFree()
  {
    return (getCost() == 0.0D) || (Double.isNaN(getCost()));
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof Event))
    {
      paramObject = (Event)paramObject;
      return getId().equals(((Event)paramObject).getId());
    }
    return false;
  }
  
  public long getBeginTime()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(new Date(getTimeStart() * 1000L));
    localCalendar.setTimeZone(TimeZone.getTimeZone(getTimezone()));
    return localCalendar.getTimeInMillis();
  }
  
  public String getCostString(String paramString)
  {
    if (isFree()) {
      return paramString;
    }
    if (Double.isNaN(getCostMax())) {
      return costToString(getCost());
    }
    return String.format("%s - %s", new Object[] { costToString(getCost()), costToString(getCostMax()) });
  }
  
  public String getDistanceFormatted(Context paramContext, StringUtils.Format paramFormat)
  {
    return getDistanceFormatted(AppData.b().n().c(), paramContext, paramFormat);
  }
  
  public long getEndTime()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(new Date(getTimeEnd() * 1000L));
    localCalendar.setTimeZone(TimeZone.getTimeZone(getTimezone()));
    return localCalendar.getTimeInMillis();
  }
  
  public String getFormattedDescription()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (getBusiness() != null)
    {
      localStringBuilder.append(getBusiness().getDisplayName());
      localStringBuilder.append("<br>");
      localStringBuilder.append(getBusiness().getYelpUrl());
      localStringBuilder.append("<br><br>");
    }
    localStringBuilder.append(getDescription());
    if (!TextUtils.isEmpty(getEventUrl()))
    {
      localStringBuilder.append("<br><br>");
      localStringBuilder.append(AppData.b().getString(2131166232));
      localStringBuilder.append("<br>");
      localStringBuilder.append(getEventUrl());
    }
    if (!TextUtils.isEmpty(getTicketsUrl()))
    {
      localStringBuilder.append("<br><br>");
      localStringBuilder.append(AppData.b().getString(2131166706));
      localStringBuilder.append("<br>");
      localStringBuilder.append(getTicketsUrl());
    }
    localStringBuilder.append("<br><br>");
    localStringBuilder.append(AppData.b().getString(2131165660));
    localStringBuilder.append("<br>");
    localStringBuilder.append(getCostString(AppData.b().getString(2131165847)));
    return Html.fromHtml(localStringBuilder.toString()).toString();
  }
  
  public String getFormattedLocation()
  {
    return Html.fromHtml(getLocationName() + " " + getMapAddress()).toString();
  }
  
  public String getFormattedShortDescription(Context paramContext)
  {
    String str1 = Html.fromHtml(getDescription()).toString().replaceAll("[\n]+", "\n");
    if (isFree()) {
      return str1;
    }
    String str2 = getCostString(paramContext.getString(2131165847));
    return paramContext.getString(2131166551, new Object[] { paramContext.getString(2131165960, new Object[] { paramContext.getString(2131165660), str2 }), str1 });
  }
  
  public String getFormattedTimeRange(Context paramContext)
  {
    Object localObject = new Date(getTimeStart() * 1000L);
    if (getType() == Event.EventType.ELITE) {
      return getFormattedTimeStart(paramContext);
    }
    Date localDate = new Date(getTimeEnd() * 1000L);
    TimeZone localTimeZone = TimeZone.getTimeZone(getTimezone());
    if (r.a((Date)localObject, localDate, localTimeZone))
    {
      localObject = paramContext.getString(2131165791);
      if (getTimeEnd() != 0L) {
        return String.format("%s %s - %s", new Object[] { r.a(paramContext, localTimeZone, getTimeStart()), r.a((String)localObject, localTimeZone, getTimeStart()), r.a((String)localObject, localTimeZone, getTimeEnd()) });
      }
      return String.format("%s %s", new Object[] { r.a(paramContext, localTimeZone, getTimeStart()), r.a((String)localObject, localTimeZone, getTimeStart()) });
    }
    if (getTimeEnd() != 0L) {
      return String.format("%s - %s", new Object[] { getFormattedTimeStart(paramContext), getFormattedTimeEnd(paramContext) });
    }
    return getFormattedTimeStart(paramContext);
  }
  
  public LatLng getLatLng()
  {
    return new LatLng(getLatitude(), getLongitude());
  }
  
  public LatLng getLocation()
  {
    return getLatLng();
  }
  
  public Event.SubscriptionStatus getSubscriptionStatusEnum()
  {
    return Event.SubscriptionStatus.statusFromString(mSubscriptionStatus);
  }
  
  public boolean hasBusiness()
  {
    return (mBusiness != null) || (!TextUtils.isEmpty(mBusinessId));
  }
  
  public boolean hasPartyPass()
  {
    return (mRsvp != null) && (!TextUtils.isEmpty(mRsvp.getPartyPassImageUrl()));
  }
  
  public int hashCode()
  {
    return getId().hashCode();
  }
  
  public boolean isUserParticipating()
  {
    boolean bool = false;
    int i;
    if ((mRsvp == null) && (getSubscriptionStatusEnum() != Event.SubscriptionStatus.Unassigned))
    {
      i = 1;
      if ((mRsvp == null) || (!mRsvp.getUserHasReplied())) {
        break label57;
      }
    }
    label57:
    for (int j = 1;; j = 0)
    {
      if ((i != 0) || (j != 0)) {
        bool = true;
      }
      return bool;
      i = 0;
      break;
    }
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mType = Event.EventType.getEventType(paramJSONObject.getString("type"));
  }
  
  public void setId(String paramString)
  {
    mId = paramString;
  }
  
  public void setReminderNotification(boolean paramBoolean)
  {
    mReminderNotification = paramBoolean;
  }
  
  public void setRsvp(EventRsvp paramEventRsvp)
  {
    mRsvp = paramEventRsvp;
  }
  
  public void setSubscriptionStatus(Event.SubscriptionStatus paramSubscriptionStatus)
  {
    mSubscriptionStatus = paramSubscriptionStatus.getValueString();
  }
  
  public void updateEventObjectInList(List<Event> paramList)
  {
    if (paramList == null) {}
    int i;
    do
    {
      return;
      i = paramList.indexOf(this);
    } while (i == -1);
    paramList.set(i, this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Event
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */