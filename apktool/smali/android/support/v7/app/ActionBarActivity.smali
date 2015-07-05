.class public Landroid/support/v7/app/ActionBarActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ActionBarActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/app/y;


# instance fields
.field private mDelegate:Landroid/support/v7/app/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private getDelegate()Landroid/support/v7/app/c;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mDelegate:Landroid/support/v7/app/c;

    if-nez v0, :cond_0

    .line 553
    invoke-static {p0}, Landroid/support/v7/app/c;->a(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mDelegate:Landroid/support/v7/app/c;

    .line 555
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->mDelegate:Landroid/support/v7/app/c;

    return-object v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/c;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 1

    .prologue
    .line 501
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->i()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->d()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 463
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getV7DrawerToggleDelegate()Landroid/support/v7/app/r;
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->j()Landroid/support/v7/app/r;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->g()V

    .line 204
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 294
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 297
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->a(Landroid/content/res/Configuration;)V

    .line 136
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .prologue
    .line 530
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->l()V

    .line 531
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->a(Landroid/os/Bundle;)V

    .line 124
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/c;->c(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0

    .prologue
    .line 382
    invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 383
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 543
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_0

    .line 548
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/c;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 167
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->o()V

    .line 168
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 515
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/c;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 157
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->onSupportNavigateUp()Z

    move-result v0

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/c;->b(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/c;->a(ILandroid/view/Menu;)V

    .line 241
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->b(Landroid/os/Bundle;)V

    .line 130
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 147
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->f()V

    .line 148
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/c;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/c;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 141
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->e()V

    .line 142
    return-void
.end method

.method public onSupportActionModeFinished(Lcom/yelp/android/m/a;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public onSupportActionModeStarted(Lcom/yelp/android/m/a;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 432
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->onCreateSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 433
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->onPrepareSupportNavigateUpTaskStack(Landroid/support/v4/app/TaskStackBuilder;)V

    .line 434
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 437
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    const/4 v0, 0x1

    .line 450
    :goto_1
    return v0

    .line 438
    :catch_0
    move-exception v0

    .line 441
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    goto :goto_0

    .line 450
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 173
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->a(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->a(I)V

    .line 103
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->a(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/c;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->a(Landroid/support/v7/widget/Toolbar;)V

    .line 93
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->c(I)V

    .line 356
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->c(Z)V

    .line 340
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->b(Z)V

    .line 325
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->a(Z)V

    .line 311
    return-void
.end method

.method public startSupportActionMode(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;

    move-result-object v0

    return-object v0
.end method

.method superAddContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    return-void
.end method

.method superOnCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 273
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superOnMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superOnPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 286
    return-void
.end method

.method superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superOnPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 277
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method superSetContentView(I)V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 258
    return-void
.end method

.method superSetContentView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 262
    return-void
.end method

.method superSetContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/c;->g()V

    .line 197
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 496
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 497
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->getDelegate()Landroid/support/v7/app/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/c;->b(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 480
    invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
