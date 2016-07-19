.class Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$6;
.super Ljava/lang/Object;
.source "BrightcoveVideoFragment.java"

# interfaces
.implements Lcom/brightcove/player/media/VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$6;->a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onVideo(Lcom/brightcove/player/model/Video;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$6;->a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/ShadowBrightcoveVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 125
    return-void
.end method
