.class Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2$1;
.super Ljava/util/TimerTask;
.source "VideoPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2$1;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2$1;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2$1;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2$1;->a:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment$2;->b:Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;->g(Lcom/yelp/android/ui/activities/camera/VideoPreviewFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->seekTo(I)V

    .line 248
    :cond_0
    return-void
.end method
