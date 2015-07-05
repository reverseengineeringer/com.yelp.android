.class public Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityVideoCapture.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/camera/ab;
.implements Lcom/yelp/android/ui/activities/camera/x;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string/jumbo v1, "extra_started_from_gallery"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->c:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    const-string/jumbo v3, "preview"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->supportInvalidateOptionsMenu()V

    .line 103
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Z)Landroid/content/Intent;

    move-result-object v0

    .line 108
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->finish()V

    .line 110
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 56
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->supportRequestWindowFeature(I)Z

    .line 58
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->b:Ljava/lang/String;

    .line 61
    const-string/jumbo v1, "extra_started_from_gallery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "capture"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    move-result-object v0

    .line 67
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c01d4

    const-string/jumbo v4, "capture"

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 72
    :cond_0
    if-eqz p1, :cond_1

    .line 73
    const-string/jumbo v0, "video_file_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->c:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "preview"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    .line 76
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->onBackPressed()V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string/jumbo v0, "video_file_path"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method
