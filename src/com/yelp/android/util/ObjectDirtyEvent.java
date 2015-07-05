package com.yelp.android.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

public class ObjectDirtyEvent<DirtyObject extends Parcelable>
{
  public DirtyObject a;
  public ArrayList<DirtyObject> b;
  public int c;
  private final String d;
  private final ObjectDirtyEvent.DirtyDataType e;
  
  public ObjectDirtyEvent(int paramInt, String paramString)
  {
    c = paramInt;
    d = paramString;
    e = ObjectDirtyEvent.DirtyDataType.INTEGER;
  }
  
  public ObjectDirtyEvent(DirtyObject paramDirtyObject, String paramString)
  {
    a = paramDirtyObject;
    d = paramString;
    e = ObjectDirtyEvent.DirtyDataType.PARCELABLE;
  }
  
  public ObjectDirtyEvent(List<DirtyObject> paramList, String paramString)
  {
    b = new ArrayList(paramList);
    d = paramString;
    e = ObjectDirtyEvent.DirtyDataType.PARCELABLE_LIST;
  }
  
  public static IntentFilter a(String paramString)
  {
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.EDIT");
    localIntentFilter.addCategory(paramString);
    return localIntentFilter;
  }
  
  public static <DirtyObject extends Parcelable> DirtyObject a(Intent paramIntent)
  {
    if (!paramIntent.hasExtra("object")) {
      throw new UnsupportedOperationException("The intent doesn't contain the parcelable object that you were expecting!");
    }
    return paramIntent.getParcelableExtra("object");
  }
  
  public static int b(Intent paramIntent)
  {
    if (!paramIntent.hasExtra("integer")) {
      throw new UnsupportedOperationException("The intent doesn't contain the int value that you were expecting!");
    }
    return paramIntent.getIntExtra("integer", 0);
  }
  
  public static <DirtyObject extends Parcelable> ArrayList<DirtyObject> c(Intent paramIntent)
  {
    if (!paramIntent.hasExtra("object_list")) {
      throw new UnsupportedOperationException("The intent doesn't contain the parcelable object list that you were expecting!");
    }
    return paramIntent.getParcelableArrayListExtra("object_list");
  }
  
  public void a(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.EDIT");
    localIntent.addCategory(d);
    switch (t.a[e.ordinal()])
    {
    }
    for (;;)
    {
      paramContext.sendBroadcast(localIntent);
      return;
      localIntent.putExtra("object", a);
      continue;
      localIntent.putExtra("integer", c);
      continue;
      localIntent.putParcelableArrayListExtra("object_list", b);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ObjectDirtyEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */