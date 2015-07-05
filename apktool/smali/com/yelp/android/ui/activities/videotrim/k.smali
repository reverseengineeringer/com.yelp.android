.class Lcom/yelp/android/ui/activities/videotrim/k;
.super Ljava/util/TimerTask;
.source "BetterMediaPlayer.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/k;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Lcom/yelp/android/ui/activities/videotrim/e;)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/videotrim/k;-><init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/k;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->NORMAL:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/k;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->k(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/k;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/k;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->l(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/k;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/k;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->m(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/k;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->n(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/k;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->o(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    goto :goto_0
.end method
