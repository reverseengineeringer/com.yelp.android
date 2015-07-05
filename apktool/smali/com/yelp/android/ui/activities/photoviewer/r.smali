.class Lcom/yelp/android/ui/activities/photoviewer/r;
.super Ljava/lang/Object;
.source "BrightcoveVideoFragment.java"

# interfaces
.implements Lcom/brightcove/player/media/VideoListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/r;->a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onVideo(Lcom/brightcove/player/model/Video;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/r;->a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 112
    return-void
.end method
