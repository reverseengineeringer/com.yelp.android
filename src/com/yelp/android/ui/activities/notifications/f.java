package com.yelp.android.ui.activities.notifications;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.serializable.Alert;
import com.yelp.android.serializable.AlertAction;
import com.yelp.android.serializable.AlertType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Video;
import com.yelp.android.ui.util.InstrumentableTextView;
import com.yelp.android.ui.widgets.RoundedWebImageView.RoundingMode;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.List;

public class f
{
  public final Button a;
  public final WebImageView b;
  public final View c;
  private final WebImageView d;
  private final InstrumentableTextView e;
  private final TextView f;
  private final TextView g;
  private final ImageView h;
  private final View i;
  
  public f(View paramView)
  {
    a = ((Button)paramView.findViewById(2131493615));
    b = ((WebImageView)paramView.findViewById(2131493614));
    d = ((WebImageView)paramView.findViewById(2131493062));
    e = ((InstrumentableTextView)paramView.findViewById(2131492996));
    f = ((TextView)paramView.findViewById(2131493170));
    g = ((TextView)paramView.findViewById(2131493611));
    h = ((ImageView)paramView.findViewById(2131492995));
    c = paramView.findViewById(2131493613);
    i = paramView.findViewById(2131494096);
  }
  
  public void a(Alert paramAlert)
  {
    boolean bool = false;
    Resources localResources = f.getResources();
    CharSequence localCharSequence;
    if (TextUtils.isEmpty(paramAlert.getImageUrl()))
    {
      d.setVisibility(4);
      localObject = paramAlert.getFormattedTitle();
      localCharSequence = paramAlert.getFormattedText();
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        break label250;
      }
      e.setText(localCharSequence);
      f.setVisibility(8);
      label67:
      if (paramAlert.getTimeModified() != null) {
        break label299;
      }
      g.setText("");
      label83:
      j = paramAlert.getAlertType().getIconResource();
      if (j <= 0) {
        break label326;
      }
      h.setImageResource(j);
      h.setVisibility(0);
      label111:
      if (paramAlert.getPhoto() == null) {
        break label338;
      }
      b.setImageUrl(paramAlert.getPhoto().getLargeUrl());
      c.setVisibility(0);
      label140:
      localObject = i;
      if (paramAlert.getAlertType() != AlertType.VIDEO_FEEDBACK) {
        break label382;
      }
    }
    label250:
    label299:
    label326:
    label338:
    label382:
    for (int j = 0;; j = 8)
    {
      ((View)localObject).setVisibility(j);
      if (!paramAlert.getActions().isEmpty()) {
        break label388;
      }
      a.setVisibility(8);
      return;
      d.setImageUrl(paramAlert.getImageUrl());
      d.setVisibility(0);
      if ((paramAlert.getImageUrl() != null) && (paramAlert.getImageUrl().startsWith("bundle://")))
      {
        d.setForceMode(RoundedWebImageView.RoundingMode.NONE);
        break;
      }
      d.setForceMode(RoundedWebImageView.RoundingMode.DEFAULT);
      break;
      e.setText((CharSequence)localObject);
      if (TextUtils.isEmpty(localCharSequence))
      {
        f.setVisibility(8);
        break label67;
      }
      f.setVisibility(0);
      f.setText(localCharSequence);
      break label67;
      g.setText(StringUtils.a(g.getContext(), StringUtils.Format.ABBREVIATED, paramAlert.getTimeModified()));
      break label83;
      h.setVisibility(8);
      break label111;
      if (paramAlert.getVideo() != null)
      {
        b.setImageUrl(paramAlert.getVideo().getThumbnailUrl());
        c.setVisibility(0);
        break label140;
      }
      c.setVisibility(8);
      break label140;
    }
    label388:
    paramAlert = (AlertAction)paramAlert.getActions().get(0);
    a.setVisibility(0);
    Object localObject = a;
    if (!paramAlert.isDisabled()) {
      bool = true;
    }
    ((Button)localObject).setEnabled(bool);
    if (paramAlert.getPath() == null) {
      a.setText(paramAlert.getActedLabel());
    }
    while (paramAlert.isDisabled())
    {
      a.setShadowLayer(0.1F, 0.0F, -1.5F, localResources.getColor(2131362018));
      return;
      a.setText(paramAlert.getLabel());
    }
    a.setShadowLayer(0.1F, 0.0F, -1.5F, localResources.getColor(2131362017));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */