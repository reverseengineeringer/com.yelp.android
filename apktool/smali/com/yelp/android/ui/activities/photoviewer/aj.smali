.class Lcom/yelp/android/ui/activities/photoviewer/aj;
.super Lcom/yelp/android/ag/b;
.source "PhotoPageFragment.java"


# instance fields
.field final synthetic b:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/aj;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-direct {p0, p2}, Lcom/yelp/android/ag/b;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/yelp/android/af/e;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/aj;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->j()V

    .line 121
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ag/b;->a(Ljava/lang/Object;Lcom/yelp/android/af/e;)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/aj;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->c(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yelp/android/af/e;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/aj;->a(Landroid/graphics/Bitmap;Lcom/yelp/android/af/e;)V

    return-void
.end method
