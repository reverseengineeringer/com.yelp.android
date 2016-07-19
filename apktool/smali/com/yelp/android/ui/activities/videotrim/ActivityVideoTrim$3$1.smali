.class Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3$1;
.super Ljava/lang/Object;
.source "ActivityVideoTrim.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3$1;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3$1;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->start()V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3$1;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3$1;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim$3;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    .line 209
    return-void
.end method
