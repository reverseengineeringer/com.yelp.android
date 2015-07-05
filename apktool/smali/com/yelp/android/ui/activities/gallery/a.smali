.class Lcom/yelp/android/ui/activities/gallery/a;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/a;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Lcom/yelp/android/ui/activities/gallery/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/gallery/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/gallery/q;

    .line 297
    sget-object v1, Lcom/yelp/android/ui/activities/gallery/q;->b:Lcom/yelp/android/ui/activities/gallery/q;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UploadGalleryChooseSource:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->b(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/a;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/q;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/a;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->c(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/gallery/a;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/r;

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 309
    return-void
.end method
