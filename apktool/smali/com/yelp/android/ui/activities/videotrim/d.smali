.class Lcom/yelp/android/ui/activities/videotrim/d;
.super Ljava/lang/Object;
.source "ActivityVideoTrim.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/c;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/d;->a:Lcom/yelp/android/ui/activities/videotrim/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/d;->a:Lcom/yelp/android/ui/activities/videotrim/c;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/videotrim/c;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;->start()V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/d;->a:Lcom/yelp/android/ui/activities/videotrim/c;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/videotrim/c;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->f(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/videotrim/d;->a:Lcom/yelp/android/ui/activities/videotrim/c;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/videotrim/c;->a:Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;->c(Lcom/yelp/android/ui/activities/videotrim/ActivityVideoTrim;)Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V

    .line 202
    return-void
.end method
