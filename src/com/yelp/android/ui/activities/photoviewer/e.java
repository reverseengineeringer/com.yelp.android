package com.yelp.android.ui.activities.photoviewer;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessObjectFlagRequest;
import com.yelp.android.appdata.webrequests.BusinessObjectFlagRequest.FlaggableObject;
import com.yelp.android.serializable.Media;
import com.yelp.android.ui.dialogs.FlagMediaDialog;
import com.yelp.android.ui.dialogs.r;

class e
  implements r
{
  e(ActivityMediaViewer paramActivityMediaViewer, boolean paramBoolean, Media paramMedia, FlagMediaDialog paramFlagMediaDialog) {}
  
  public void a(String paramString)
  {
    BusinessObjectFlagRequest.FlaggableObject localFlaggableObject;
    if (a)
    {
      localFlaggableObject = BusinessObjectFlagRequest.FlaggableObject.VIDEO;
      if (!a) {
        break label92;
      }
    }
    label92:
    for (EventIri localEventIri = EventIri.FlagVideo;; localEventIri = EventIri.FlagPhoto)
    {
      AppData.a(localEventIri, "id", b.getId());
      new BusinessObjectFlagRequest(localFlaggableObject, b.getId(), paramString, ActivityMediaViewer.d(d)).execute(new Void[0]);
      c.dismiss();
      ActivityMediaViewer.e(d);
      return;
      localFlaggableObject = BusinessObjectFlagRequest.FlaggableObject.PHOTO;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */