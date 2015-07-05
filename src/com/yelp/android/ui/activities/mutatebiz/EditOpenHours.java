package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.dialogs.SimpleListDialogFragment;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.al;
import java.io.File;
import java.net.URI;

public class EditOpenHours
  extends YelpActivity
  implements al
{
  private ImageInputHelper a;
  
  public static Intent a(Context paramContext, CharSequence paramCharSequence, Uri paramUri)
  {
    paramContext = new Intent(paramContext, EditOpenHours.class);
    paramContext.putExtra("DESCRIPTION", paramCharSequence);
    paramContext.setData(paramUri);
    return paramContext;
  }
  
  public static Intent a(Intent paramIntent, CharSequence paramCharSequence)
  {
    paramIntent.putExtra("LISTED_HOURS", paramCharSequence);
    return paramIntent;
  }
  
  public static String a(Intent paramIntent)
  {
    return paramIntent.getStringExtra("DESCRIPTION");
  }
  
  private void a()
  {
    TextView localTextView = (TextView)findViewById(2131493145);
    if (!TextUtils.isEmpty(getIntent().getStringExtra("DESCRIPTION"))) {
      localTextView.setText(2131165480);
    }
    localTextView.setOnClickListener(new x(this));
  }
  
  private void a(Bundle paramBundle)
  {
    a = new ImageInputHelper(AppData.b().h(), 300);
    a.b(paramBundle);
    if (getIntent().getData() != null) {
      a.a(2131166418, createPendingResult(100, new Intent(), 0));
    }
    paramBundle = (TextView)findViewById(2131493062);
    if (getIntent().getData() != null) {
      paramBundle.setText(2131165482);
    }
    paramBundle.setOnClickListener(new w(this));
  }
  
  public void a(File paramFile)
  {
    hideLoadingDialog();
  }
  
  public boolean a(Bitmap paramBitmap, File paramFile, ImageInputHelper.ImageSource paramImageSource)
  {
    hideLoadingDialog();
    paramBitmap = Uri.fromFile(paramFile);
    paramFile = getIntent().getData();
    if (paramFile != null) {
      new File(URI.create(String.valueOf(paramFile))).delete();
    }
    paramFile = new Intent(getIntent());
    paramFile.setData(paramBitmap);
    setResult(-1, paramFile);
    finish();
    return true;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessEditHours;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      Object localObject;
      do
      {
        do
        {
          return;
        } while (paramInt2 != -1);
        localObject = new Intent(getIntent());
        ((Intent)localObject).putExtra("DESCRIPTION", EditOpenHoursDescription.a(paramIntent));
        setResult(-1, (Intent)localObject);
        finish();
        return;
      } while (paramInt2 != -1);
      showLoadingDialog(2131165378);
      a.a(paramIntent, this).execute(new Context[] { this });
      return;
      if (paramInt2 == -1)
      {
        a.a();
        localObject = getIntent().getData();
        getIntent().setData(null);
        setResult(-1, getIntent());
        localObject = new File(URI.create(String.valueOf(localObject)));
        if (((File)localObject).exists()) {
          ((File)localObject).delete();
        }
        ((TextView)findViewById(2131493062)).setText(2131166543);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903085);
    a();
    a(paramBundle);
    paramBundle = (SimpleListDialogFragment)getSupportFragmentManager().findFragmentByTag("dialog_photo");
    if (paramBundle != null) {
      paramBundle.a(a.b(this));
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    a.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.EditOpenHours
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */