package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

class cy$2
  implements Handler.Callback
{
  cy$2(cy paramcy) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    if ((1 == what) && (cy.ez().equals(obj)))
    {
      atK.dispatch();
      if ((cy.b(atK) > 0) && (!cy.c(atK))) {
        cy.d(atK).sendMessageDelayed(cy.d(atK).obtainMessage(1, cy.ez()), cy.b(atK));
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */