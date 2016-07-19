package android.support.v4.app;

import android.app.RemoteInput;
import android.app.RemoteInput.Builder;

class ah
{
  static RemoteInput[] a(ai.a[] paramArrayOfa)
  {
    if (paramArrayOfa == null) {
      return null;
    }
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfa.length];
    int i = 0;
    while (i < paramArrayOfa.length)
    {
      ai.a locala = paramArrayOfa[i];
      arrayOfRemoteInput[i] = new RemoteInput.Builder(locala.a()).setLabel(locala.b()).setChoices(locala.c()).setAllowFreeFormInput(locala.d()).addExtras(locala.e()).build();
      i += 1;
    }
    return arrayOfRemoteInput;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */