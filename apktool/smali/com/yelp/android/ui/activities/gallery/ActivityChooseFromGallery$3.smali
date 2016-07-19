.class Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->e(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;)I

    move-result v0

    if-lez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    new-instance v1, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3$1;-><init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Landroid/content/DialogInterface$OnClickListener;)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V

    goto :goto_0
.end method
