.class Lcom/yelp/android/ui/activities/videotrim/r;
.super Ljava/util/TimerTask;
.source "VideoTrimTimelineView.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/yelp/android/ui/activities/videotrim/r;->a:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/videotrim/r;->a:Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/videotrim/VideoTrimTimelineView;->b()V

    .line 223
    return-void
.end method
