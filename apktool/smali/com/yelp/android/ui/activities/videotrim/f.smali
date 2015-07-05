.class Lcom/yelp/android/ui/activities/videotrim/f;
.super Ljava/lang/Object;
.source "BetterMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/f;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iput p2, p0, Lcom/yelp/android/ui/activities/videotrim/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/f;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->c(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/f;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/videotrim/f;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->d(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/f;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->e(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    .line 186
    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/f;->a:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/f;->a:I

    add-int/lit16 v2, v0, 0x3e8

    if-ge v1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/f;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    sget-object v2, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->FROZEN_AND_WAITING:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/f;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/f;->a:I

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/f;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->LOOKING_FOR_KEYFRAME:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/f;->b:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/f;->a:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->b(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V

    goto :goto_0
.end method
