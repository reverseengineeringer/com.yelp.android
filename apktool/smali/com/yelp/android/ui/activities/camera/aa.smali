.class Lcom/yelp/android/ui/activities/camera/aa;
.super Ljava/util/TimerTask;
.source "VideoPreviewFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/z;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/z;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/aa;->a:Lcom/yelp/android/ui/activities/camera/z;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/aa;->a:Lcom/yelp/android/ui/activities/camera/z;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/camera/z;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/aa;->a:Lcom/yelp/android/ui/activities/camera/z;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/camera/z;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/aa;->a:Lcom/yelp/android/ui/activities/camera/z;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/camera/z;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->g(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->seekTo(I)V

    .line 246
    :cond_0
    return-void
.end method
