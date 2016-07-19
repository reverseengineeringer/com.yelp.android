.class Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$3;
.super Ljava/lang/Object;
.source "BrightcoveVideoFragment.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


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
    .line 80
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$3;->a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment$3;->a:Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->o()V

    .line 85
    return-void
.end method
