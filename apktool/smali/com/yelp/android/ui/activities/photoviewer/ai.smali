.class Lcom/yelp/android/ui/activities/photoviewer/ai;
.super Lcom/yelp/android/ag/b;
.source "PhotoPageFragment.java"


# instance fields
.field final synthetic b:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ai;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-direct {p0, p2}, Lcom/yelp/android/ag/b;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/yelp/android/af/e;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ai;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->j()V

    .line 104
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ag/b;->a(Ljava/lang/Object;Lcom/yelp/android/af/e;)V

    .line 105
    new-instance v0, Lcom/yelp/android/ui/util/ag;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/ag;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ai;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/util/ag;->a(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 106
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yelp/android/af/e;)V
    .locals 0

    .prologue
    .line 100
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/ai;->a(Landroid/graphics/Bitmap;Lcom/yelp/android/af/e;)V

    return-void
.end method
