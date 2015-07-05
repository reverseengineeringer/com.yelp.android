.class Lcom/yelp/android/ui/activities/videotrim/h;
.super Ljava/lang/Object;
.source "BetterMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/h;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/h;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/h;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/h;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->g(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)F

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/h;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->h(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->b(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;FF)V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/h;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->f(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    return-void
.end method
