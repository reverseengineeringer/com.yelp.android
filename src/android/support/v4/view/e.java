package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import com.yelp.android.f.w;

class e
  extends b
{
  public w a(Object paramObject, View paramView)
  {
    paramObject = k.a(paramObject, paramView);
    if (paramObject != null) {
      return new w(paramObject);
    }
    return null;
  }
  
  public Object a(a parama)
  {
    return k.a(new f(this, parama));
  }
  
  public boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return k.a(paramObject, paramView, paramInt, paramBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */