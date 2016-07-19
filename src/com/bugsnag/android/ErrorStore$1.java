package com.bugsnag.android;

import java.io.File;

class ErrorStore$1
  implements Runnable
{
  ErrorStore$1(ErrorStore paramErrorStore) {}
  
  public void run()
  {
    Object localObject = new File(this$0.path);
    if ((!((File)localObject).exists()) || (!((File)localObject).isDirectory())) {}
    do
    {
      return;
      localObject = ((File)localObject).listFiles();
    } while ((localObject == null) || (localObject.length <= 0));
    Logger.info(String.format("Sending %d saved error(s) to Bugsnag", new Object[] { Integer.valueOf(localObject.length) }));
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      File localFile = localObject[i];
      try
      {
        Notification localNotification = new Notification(this$0.config);
        localNotification.addError(localFile);
        localNotification.deliver();
        Logger.info("Deleting sent error file " + localFile.getName());
        if (!localFile.delete()) {
          localFile.deleteOnExit();
        }
        i += 1;
      }
      catch (HttpClient.NetworkException localNetworkException)
      {
        for (;;)
        {
          Logger.warn("Could not send previously saved error(s) to Bugsnag, will try again later", localNetworkException);
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Logger.warn("Problem sending unsent error from disk", localException);
          if (!localNetworkException.delete()) {
            localNetworkException.deleteOnExit();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.ErrorStore.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */