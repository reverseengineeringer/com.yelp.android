.class Lcom/yelp/android/ui/activities/videotrim/e;
.super Ljava/lang/Object;
.source "BetterMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/e;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/e;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/e;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/e;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->b(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/e;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->seekTo(I)V

    .line 72
    :cond_1
    return-void
.end method
