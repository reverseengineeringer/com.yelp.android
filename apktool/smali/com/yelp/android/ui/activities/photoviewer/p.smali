.class Lcom/yelp/android/ui/activities/photoviewer/p;
.super Ljava/lang/Object;
.source "BrightcoveVideoFragment.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/p;->a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/p;->a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->u()V

    .line 86
    return-void
.end method
