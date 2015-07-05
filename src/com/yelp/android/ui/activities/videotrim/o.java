package com.yelp.android.ui.activities.videotrim;

import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.yelp.android.serializable.LocalVideo;
import com.yelp.android.util.aj;

class o
  extends AsyncTask<Integer, Void, Void>
{
  private o(m paramm) {}
  
  protected Void a(Integer... paramVarArgs)
  {
    int i = paramVarArgs[0].intValue();
    paramVarArgs = new aj(m.a(a).getFilePath());
    for (;;)
    {
      if ((m.b(a) >= m.c(a) + i) || (m.b(a) > m.a(a).getDuration()))
      {
        paramVarArgs.release();
        return null;
      }
      Bitmap localBitmap = paramVarArgs.a(m.b(a));
      m.d(a).a(m.b(a), localBitmap);
      m.a(a, m.c(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */