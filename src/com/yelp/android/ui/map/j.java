package com.yelp.android.ui.map;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.text.TextPaint;
import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.yelp.android.appdata.ao;
import com.yelp.android.serializable.by;

public abstract class j<T extends by>
  implements a<T>
{
  private final Bitmap a;
  private final TextPaint b;
  
  public j(Context paramContext)
  {
    TextPaint localTextPaint = new TextPaint();
    localTextPaint.setAntiAlias(true);
    localTextPaint.setFakeBoldText(true);
    localTextPaint.setColor(-1);
    localTextPaint.setTextSize(ao.b(14.0F));
    a = BitmapFactory.decodeResource(paramContext.getResources(), 2130838150);
    b = localTextPaint;
  }
  
  public BitmapDescriptor a(T paramT)
  {
    Object localObject2 = a.getConfig();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = Bitmap.Config.ARGB_8888;
    }
    localObject1 = a.copy((Bitmap.Config)localObject1, true);
    int i = ((Bitmap)localObject1).getWidth() / 2;
    int j = (int)Math.floor(((Bitmap)localObject1).getHeight() / 1.8D);
    localObject2 = new Canvas((Bitmap)localObject1);
    paramT = String.valueOf(b(paramT));
    float f = b.measureText(paramT) / 2.0F;
    ((Canvas)localObject2).drawText(paramT, i - f, j, b);
    return BitmapDescriptorFactory.fromBitmap((Bitmap)localObject1);
  }
  
  protected abstract int b(T paramT);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */