package com.yelp.android.ui.activities.businesspage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.w;
import com.yelp.android.util.StringUtils;
import com.yelp.android.webimageview.ImageLoaderHandler;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;

class n
  extends ImageLoaderHandler
{
  private final YelpBusiness a;
  private final Activity b;
  
  protected n(Activity paramActivity, YelpBusiness paramYelpBusiness)
  {
    super(null);
    a = paramYelpBusiness;
    b = paramActivity;
  }
  
  private void a(Intent paramIntent)
  {
    ArrayList localArrayList = new ArrayList();
    List localList = a.getCategories();
    if (!localList.isEmpty()) {
      localArrayList.add(StringUtils.a(", ", localList, new w()));
    }
    if (!TextUtils.isEmpty(a.getCrossStreets())) {
      localArrayList.add(a.getCrossStreets());
    }
    paramIntent.putExtra("notes", TextUtils.join(" \n", localArrayList));
  }
  
  @TargetApi(11)
  private void a(Intent paramIntent, Message paramMessage)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject;
    if (paramMessage != null)
    {
      localObject = (Bitmap)paramMessage.getData().getParcelable("droidfu:extra_bitmap");
      if (localObject != null)
      {
        paramMessage = new ByteArrayOutputStream();
        ((Bitmap)localObject).compress(Bitmap.CompressFormat.PNG, 100, paramMessage);
        localObject = new ContentValues();
        ((ContentValues)localObject).put("mimetype", "vnd.android.cursor.item/photo");
        ((ContentValues)localObject).put("data15", paramMessage.toByteArray());
        localArrayList.add(localObject);
      }
    }
    paramMessage = a.getYelpUrl(b).toString();
    if (!TextUtils.isEmpty(paramMessage))
    {
      localObject = new ContentValues();
      ((ContentValues)localObject).put("mimetype", "vnd.android.cursor.item/website");
      ((ContentValues)localObject).put("data2", Integer.valueOf(5));
      ((ContentValues)localObject).put("data1", paramMessage);
      localArrayList.add(localObject);
    }
    paramIntent.putParcelableArrayListExtra("data", localArrayList);
  }
  
  public void a(Message paramMessage)
  {
    Intent localIntent = new Intent("android.intent.action.INSERT");
    localIntent.setType("vnd.android.cursor.dir/contact");
    localIntent.putExtra("name", a.getDisplayName());
    if (!TextUtils.isEmpty(a.getDialablePhone()))
    {
      localIntent.putExtra("phone", a.getDialablePhone());
      localIntent.putExtra("phone_type", 3);
    }
    if (!TextUtils.isEmpty(a.getLocalizedStreetAddress()))
    {
      localIntent.putExtra("postal_type", 2);
      localIntent.putExtra("postal", a.getLocalizedStreetAddress());
    }
    a(localIntent);
    a(localIntent, paramMessage);
    b.startActivity(localIntent);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what != 0) {
      return;
    }
    a(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */