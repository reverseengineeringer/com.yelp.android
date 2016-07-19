package com.yelp.android.serializable;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

public class Tip
  extends _Tip
  implements Complimentable, SingleFeedEntry, b
{
  public static final JsonParser.DualCreator<Tip> CREATOR = new Tip.1();
  protected String a = "";
  private Bitmap q;
  private Feedback r = new Feedback();
  
  public CharSequence a(Context paramContext)
  {
    int i = k();
    int j = g().d();
    String str = "";
    if (i <= 0)
    {
      localObject = str;
      if (j <= 0) {}
    }
    else
    {
      if (j > 0) {
        str = StringUtils.a(paramContext, 2131230793, j, new Object[] { Boolean.valueOf(true) });
      }
      if (i <= 0) {
        break label202;
      }
      str = StringUtils.a(paramContext, 2131230778, i, new Object[] { Boolean.valueOf(true) });
    }
    label202:
    for (Object localObject = str;; localObject = null)
    {
      if ((i > 0) && (j > 0)) {
        localObject = TextUtils.join(" ● ", new CharSequence[] { localObject, StringUtils.a(paramContext, 2131230785, j, new Object[] { Boolean.valueOf(true) }) });
      }
      for (;;)
      {
        paramContext = new StyleSpan(1);
        localObject = new SpannableStringBuilder((CharSequence)localObject);
        ((SpannableStringBuilder)localObject).setSpan(paramContext, 0, ((CharSequence)localObject).length(), 18);
        return (CharSequence)localObject;
        localObject = str;
        if (j == 1)
        {
          localObject = str;
          if (g().c()) {
            localObject = paramContext.getText(2131166868);
          }
        }
      }
    }
  }
  
  public void a(Bitmap paramBitmap)
  {
    q = paramBitmap;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    r = ((Feedback)paramParcel.readParcelable(Feedback.class.getClassLoader()));
    q = ((Bitmap)paramParcel.readParcelable(Bitmap.class.getClassLoader()));
    a = paramParcel.readString();
  }
  
  public void a(Photo paramPhoto)
  {
    e = paramPhoto;
  }
  
  public void a(User paramUser)
  {
    if (paramUser == null) {
      return;
    }
    g = paramUser.a();
    m = paramUser.c();
    h = paramUser.ae();
  }
  
  public void a(String paramString)
  {
    i = paramString;
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    r = new Feedback(s(), l());
  }
  
  public boolean a(b paramb)
  {
    if (!(paramb instanceof Tip)) {}
    label81:
    label84:
    for (;;)
    {
      return false;
      paramb = (Tip)paramb;
      int i;
      if ((!TextUtils.isEmpty(paramb.a())) && (paramb.a().equals(f)))
      {
        i = 1;
        if ((TextUtils.isEmpty(paramb.i())) || (!paramb.i().equals(a))) {
          break label81;
        }
      }
      for (int j = 1;; j = 0)
      {
        if ((i == 0) && (j == 0)) {
          break label84;
        }
        return true;
        i = 0;
        break;
      }
    }
  }
  
  public String b()
  {
    if (h == null) {
      h = AppData.b().q().a();
    }
    return h;
  }
  
  public void b(String paramString)
  {
    l = paramString;
  }
  
  public Compliment.ComplimentableItemType c()
  {
    return Compliment.ComplimentableItemType.QUICK_TIP;
  }
  
  public void c(String paramString)
  {
    a = paramString;
  }
  
  public Date d()
  {
    return b;
  }
  
  public void d(String paramString)
  {
    f = paramString;
  }
  
  public Bitmap f()
  {
    return q;
  }
  
  public Feedback g()
  {
    return r;
  }
  
  public String h()
  {
    if (g == null)
    {
      co localco = AppData.b().q();
      if (b().equals(localco.a())) {
        g = localco.q();
      }
    }
    return g;
  }
  
  public String i()
  {
    return a;
  }
  
  public boolean j()
  {
    return TextUtils.isEmpty(f);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(r, paramInt);
    paramParcel.writeParcelable(q, paramInt);
    paramParcel.writeString(a);
  }
  
  public static class TempTip
    extends Tip
  {
    public TempTip()
    {
      f = "";
      a = UUID.randomUUID().toString();
      i = "";
      b = new Date();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Tip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */