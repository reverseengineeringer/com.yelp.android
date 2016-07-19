.class Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$1;
.super Ljava/util/TimerTask;
.source "VideoTrimTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->a(Lcom/yelp/android/ui/activities/videotrim/BetterMediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$1;->a:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView$1;->a:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b()V

    .line 226
    return-void
.end method
