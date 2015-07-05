package com.yelp.android.util;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.provider.ContactsContract.Contacts;
import android.text.TextUtils;

final class EclairFetcher$EclairContact
  extends ContactsFetcher.Contact
{
  public static final Parcelable.Creator<EclairContact> CREATOR = new j();
  Uri mLookupUri;
  
  public EclairFetcher$EclairContact(Uri paramUri)
  {
    mLookupUri = paramUri;
  }
  
  private Uri getLookupUri(ContentResolver paramContentResolver, String paramString)
  {
    mLookupUri = ContactsContract.Contacts.getLookupUri(paramContentResolver, mLookupUri);
    paramContentResolver = mLookupUri;
    if (!TextUtils.isEmpty(paramString))
    {
      long l = ContentUris.parseId(mLookupUri);
      paramContentResolver = Uri.withAppendedPath(ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, l), paramString);
    }
    return paramContentResolver;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String loadEmail(Context paramContext)
  {
    Object localObject1 = null;
    paramContext = paramContext.getContentResolver();
    Object localObject2 = getLookupUri(paramContext, "data");
    String str = String.format("%s='%s'", new Object[] { "mimetype", "vnd.android.cursor.item/email_v2" });
    localObject2 = paramContext.query((Uri)localObject2, new String[] { "data1" }, str, null, null);
    paramContext = (Context)localObject1;
    if (EclairFetcher.a((Cursor)localObject2)) {}
    try
    {
      paramContext = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex("data1"));
      return paramContext;
    }
    finally
    {
      EclairFetcher.b((Cursor)localObject2);
    }
  }
  
  public String loadName(Context paramContext)
  {
    Object localObject = null;
    paramContext = paramContext.getContentResolver();
    Cursor localCursor = paramContext.query(getLookupUri(paramContext, ""), new String[] { "display_name" }, null, null, null);
    paramContext = (Context)localObject;
    if (EclairFetcher.a(localCursor)) {}
    try
    {
      paramContext = localCursor.getString(localCursor.getColumnIndex("display_name"));
      return paramContext;
    }
    finally
    {
      EclairFetcher.b(localCursor);
    }
  }
  
  public Bitmap loadPhoto(Context paramContext)
  {
    Object localObject = null;
    paramContext = paramContext.getContentResolver();
    Cursor localCursor = paramContext.query(getLookupUri(paramContext, "photo"), new String[] { "data15" }, null, null, null);
    paramContext = (Context)localObject;
    if (EclairFetcher.a(localCursor)) {}
    try
    {
      paramContext = localCursor.getBlob(localCursor.getColumnIndex("data15"));
      paramContext = BitmapFactory.decodeByteArray(paramContext, 0, paramContext.length);
      return paramContext;
    }
    finally
    {
      EclairFetcher.b(localCursor);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mLookupUri, paramInt);
    super.writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.EclairFetcher.EclairContact
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */