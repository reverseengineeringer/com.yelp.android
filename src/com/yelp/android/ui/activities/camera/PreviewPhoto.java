package com.yelp.android.ui.activities.camera;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import java.io.File;

public class PreviewPhoto
  extends YelpActivity
{
  public static Intent a(Context paramContext, File paramFile, boolean paramBoolean, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return a(paramContext, paramFile, paramBoolean, paramCharSequence1, paramCharSequence2, false);
  }
  
  public static Intent a(Context paramContext, File paramFile, boolean paramBoolean1, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean2)
  {
    paramContext = new Intent(paramContext, PreviewPhoto.class);
    paramContext.putExtra("extra.file_path", paramFile.getAbsolutePath());
    paramContext.putExtra("extra.cleanup_file_on_back", paramBoolean1);
    paramContext.putExtra("extra.change_photo_text", paramCharSequence1);
    paramContext.putExtra("extra.confirm_photo_text", paramCharSequence2);
    paramContext.putExtra("extra.hide_buttons", paramBoolean2);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.YesOrNoPhoto;
  }
  
  public void onBackPressed()
  {
    Intent localIntent = getIntent();
    if (localIntent.getBooleanExtra("extra.cleanup_file_on_back", false)) {
      new File(localIntent.getStringExtra("extra.file_path")).delete();
    }
    setResult(4);
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903116);
    paramBundle = new File(getIntent().getStringExtra("extra.file_path"));
    ImageView localImageView = (ImageView)findViewById(2131689747);
    t.a(this).a(paramBundle.getPath()).a(localImageView);
    if (getIntent().getBooleanExtra("extra.hide_buttons", false))
    {
      findViewById(2131689914).setVisibility(8);
      getSupportActionBar().b(2131166384);
      return;
    }
    getSupportActionBar().e();
    paramBundle = (TextView)findViewById(2131689915);
    paramBundle.setText(getIntent().getCharSequenceExtra("extra.change_photo_text"));
    paramBundle.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        new File(getIntent().getStringExtra("extra.file_path")).delete();
        setResult(0);
        finish();
      }
    });
    paramBundle = (TextView)findViewById(2131689916);
    paramBundle.setText(getIntent().getCharSequenceExtra("extra.confirm_photo_text"));
    paramBundle.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        setResult(-1);
        finish();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.PreviewPhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */