.class Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3$1;
.super Ljava/lang/Object;
.source "ActivityChooseFromGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;->a(Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

.field final synthetic b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3$1;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3$1;->a:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3$1;->b:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3;->a:Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery$3$1;->a:Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;Lcom/yelp/android/ui/activities/gallery/ContributionButtonAdapter$ContributionButton;)V

    .line 513
    return-void
.end method
