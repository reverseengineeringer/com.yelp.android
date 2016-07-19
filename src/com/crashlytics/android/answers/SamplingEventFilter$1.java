package com.crashlytics.android.answers;

import java.util.HashSet;

final class SamplingEventFilter$1
  extends HashSet<SessionEvent.Type>
{
  SamplingEventFilter$1()
  {
    add(SessionEvent.Type.CREATE);
    add(SessionEvent.Type.START);
    add(SessionEvent.Type.RESUME);
    add(SessionEvent.Type.SAVE_INSTANCE_STATE);
    add(SessionEvent.Type.PAUSE);
    add(SessionEvent.Type.STOP);
    add(SessionEvent.Type.DESTROY);
    add(SessionEvent.Type.ERROR);
    add(SessionEvent.Type.CRASH);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.answers.SamplingEventFilter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */