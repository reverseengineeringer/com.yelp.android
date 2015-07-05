package com.yelp.android.ui.activities.camera;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.io.File;

public class PreviewPhoto
  extends YelpActivity
{
  public static Intent a(Context paramContext, File paramFile, boolean paramBoolean, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    paramContext = new Intent(paramContext, PreviewPhoto.class);
    paramContext.putExtra("file", paramFile.getAbsolutePath());
    paramContext.putExtra("cleanup_file_on_back", paramBoolean);
    paramContext.putExtra("change_photo_text", paramCharSequence1);
    paramContext.putExtra("confirm_photo_text", paramCharSequence2);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.YesOrNoPhoto;
  }
  
  public void onBackPressed()
  {
    Intent localIntent = getIntent();
    if (localIntent.getBooleanExtra("cleanup_file_on_back", false)) {
      new File(localIntent.getStringExtra("file")).delete();
    }
    setResult(4);
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903105);
    paramBundle = new File(getIntent().getStringExtra("file"));
    new k((ImageView)findViewById(2131493062)).execute(new File[] { paramBundle });
    paramBundle = (TextView)findViewById(2131493258);
    paramBundle.setText(getIntent().getCharSequenceExtra("change_photo_text"));
    paramBundle.setOnClickListener(new i(this));
    paramBundle = (TextView)findViewById(2131493259);
    paramBundle.setText(getIntent().getCharSequenceExtra("confirm_photo_text"));
    paramBundle.setOnClickListener(new j(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.PreviewPhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */