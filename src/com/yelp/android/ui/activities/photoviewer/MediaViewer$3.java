package com.yelp.android.ui.activities.photoviewer;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.MediaFlagRequest;
import com.yelp.android.appdata.webrequests.MediaFlagRequest.FlaggableMedia;
import com.yelp.android.serializable.Media;
import com.yelp.android.ui.dialogs.FlagMediaDialog;
import com.yelp.android.ui.dialogs.b;

class MediaViewer$3
  implements b
{
  MediaViewer$3(MediaViewer paramMediaViewer, Media paramMedia, boolean paramBoolean, FlagMediaDialog paramFlagMediaDialog) {}
  
  public void a(String paramString)
  {
    MediaFlagRequest.FlaggableMedia localFlaggableMedia = d.a(a);
    if (localFlaggableMedia == null) {
      throw new IllegalStateException("You should override getFlaggableMedia() to not return null if your MediaViewer can flag media.");
    }
    if (b) {}
    for (EventIri localEventIri = EventIri.FlagVideo;; localEventIri = EventIri.FlagPhoto)
    {
      AppData.a(localEventIri, "id", a.a());
      new MediaFlagRequest(localFlaggableMedia, a.a(), paramString, MediaViewer.a(d)).f(new Void[0]);
      c.dismiss();
      d.showLoadingDialog();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.MediaViewer.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */