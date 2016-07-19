.class Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;
.super Ljava/lang/Object;
.source "BetterMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

.field private final b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p2, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->b:I

    .line 296
    iput p2, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->c:I

    .line 297
    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->i(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->LOOKING_FOR_KEYFRAME:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    if-eq v0, v1, :cond_0

    .line 315
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->j(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)I

    move-result v0

    .line 305
    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->b:I

    add-int/lit8 v1, v1, 0x64

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->c:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_2

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    sget-object v2, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;->FROZEN_AND_WAITING:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$PlayerState;)V

    .line 309
    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iget v2, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->b:I

    sub-int v0, v2, v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V

    goto :goto_0

    .line 312
    :cond_2
    iget v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->c:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->c:I

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->a:Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    iget v1, p0, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer$a;->c:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->c(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;I)V

    goto :goto_0
.end method
