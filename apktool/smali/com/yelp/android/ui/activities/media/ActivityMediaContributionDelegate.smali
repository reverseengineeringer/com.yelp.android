.class public Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;
.super Landroid/app/Activity;
.source "ActivityMediaContributionDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v1, "CameraId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "extra_disable_video_for_reviews"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const-string/jumbo v1, "extra_business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "extra_disable_video_for_reviews"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    if-nez p0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "extra_disable_video_for_reviews"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    invoke-virtual {p0, p2, p3}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->setResult(ILandroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->finish()V

    .line 87
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    const-string/jumbo v1, "extra_disable_video_for_reviews"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 66
    const-string/jumbo v2, "extra_business_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    if-eqz v1, :cond_0

    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    .line 69
    :goto_0
    invoke-static {p0, v0, v3, v3, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    const/16 v1, 0x41d

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/media/ActivityMediaContributionDelegate;->startActivityForResult(Landroid/content/Intent;I)V

    .line 77
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO_AND_VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    goto :goto_0
.end method
