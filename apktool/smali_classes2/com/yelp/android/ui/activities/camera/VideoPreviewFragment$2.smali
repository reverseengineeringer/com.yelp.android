.class Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;
.super Ljava/lang/Object;
.source "VideoPreviewFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:Ljava/util/Timer;

.field final synthetic b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->e(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 233
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 238
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->a:Ljava/util/Timer;

    .line 239
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->f(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->e(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->f(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->g(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v1

    sub-int v4, v0, v1

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->a:Ljava/util/Timer;

    new-instance v1, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2$1;-><init>(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;)V

    int-to-long v2, v2

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 252
    return-void
.end method
