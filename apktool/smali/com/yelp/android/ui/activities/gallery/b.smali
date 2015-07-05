.class Lcom/yelp/android/ui/activities/gallery/b;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/gallery/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/b;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 357
    sget-object v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_PHOTO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    if-ne v0, p1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/b;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/b;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/gallery/b;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I

    move-result v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/b;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    const/16 v2, 0x41d

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;->TAKE_VIDEO:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    if-ne v0, p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/b;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/b;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->d(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/yelp/android/ui/activities/camera/ActivityVideoCapture;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/b;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    const/16 v2, 0x41e

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
