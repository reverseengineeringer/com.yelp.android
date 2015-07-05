.class Lcom/yelp/android/ui/activities/videotrim/g;
.super Ljava/lang/Object;
.source "BetterMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/videotrim/g;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->d(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->d(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->d(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/view/TextureView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/g;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0, v3, v3}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;FF)V

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/g;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    return-void
.end method
