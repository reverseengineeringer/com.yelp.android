.class public Lcom/yelp/android/ui/activities/camera/RetryPhoto;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "RetryPhoto.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/camera/RetryPhoto;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    const-string/jumbo v1, "file_path"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string/jumbo v1, "retry_service_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/RetryPhoto;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_0

    .line 56
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    return-void

    .line 45
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/RetryPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "retry_service_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/RetryPhoto;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/RetryPhoto;->finish()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/RetryPhoto;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "file_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x1

    const v2, 0x7f070110

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/camera/RetryPhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f070500

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/camera/RetryPhoto;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/camera/PreviewPhoto;->a(Landroid/content/Context;Ljava/io/File;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/camera/RetryPhoto;->startActivityForResult(Landroid/content/Intent;I)V

    .line 39
    return-void
.end method
