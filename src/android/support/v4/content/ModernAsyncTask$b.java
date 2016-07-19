package android.support.v4.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class ModernAsyncTask$b
  extends Handler
{
  public ModernAsyncTask$b()
  {
    super(Looper.getMainLooper());
  }
  
  public void handleMessage(Message paramMessage)
  {
    ModernAsyncTask.a locala = (ModernAsyncTask.a)obj;
    switch (what)
    {
    default: 
      return;
    case 1: 
      ModernAsyncTask.c(a, b[0]);
      return;
    }
    a.b(b);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.ModernAsyncTask.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */