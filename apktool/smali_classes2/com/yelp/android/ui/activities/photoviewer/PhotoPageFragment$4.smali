.class Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$4;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/util/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->l()V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$4;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->d(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setVisibility(I)V

    .line 126
    return-void
.end method
