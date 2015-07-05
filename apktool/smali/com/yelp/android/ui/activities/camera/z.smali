.class Lcom/yelp/android/ui/activities/camera/z;
.super Ljava/lang/Object;
.source "VideoPreviewFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public a:Ljava/util/Timer;

.field final synthetic b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/z;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/z;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->e(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 232
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/z;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/z;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 237
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/z;->a:Ljava/util/Timer;

    .line 238
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/z;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->f(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/z;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->e(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/z;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->f(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/z;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->g(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v1

    sub-int v4, v0, v1

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/z;->a:Ljava/util/Timer;

    new-instance v1, Lcom/yelp/android/ui/activities/camera/aa;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/aa;-><init>(Lcom/yelp/android/ui/activities/camera/z;)V

    int-to-long v2, v2

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 248
    return-void
.end method
