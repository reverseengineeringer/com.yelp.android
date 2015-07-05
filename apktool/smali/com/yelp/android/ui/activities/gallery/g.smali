.class Lcom/yelp/android/ui/activities/gallery/g;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/media/b;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/g;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/g;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->i(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    .line 444
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/media/c;)V
    .locals 3

    .prologue
    .line 448
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 449
    const-string/jumbo v1, "extra_image"

    iget-object v2, p1, Lcom/yelp/android/ui/activities/media/c;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 450
    const-string/jumbo v1, "extra_file_path"

    iget-object v2, p1, Lcom/yelp/android/ui/activities/media/c;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string/jumbo v1, "extra_media_source"

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 454
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/g;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->setResult(ILandroid/content/Intent;)V

    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/g;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->finish()V

    .line 456
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/g;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    const v1, 0x7f070252

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/g;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    const v2, 0x7f070253

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/g;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/g;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->finishActivity(I)V

    .line 466
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/g;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->hideLoadingDialog()V

    .line 471
    return-void
.end method
