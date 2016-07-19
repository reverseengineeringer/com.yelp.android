.class public abstract Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "MediaBaseFragment.java"


# instance fields
.field protected a:Lcom/yelp/android/ui/panels/PanelLoading;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public H_()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 42
    return-void
.end method

.method public abstract k()Lcom/yelp/android/serializable/Media;
.end method

.method public l()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 47
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    const v1, 0x7f0300d2

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    const v1, 0x7f0f002d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/panels/PanelLoading;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 30
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDestroy()V

    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->a:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->c()V

    .line 37
    return-void
.end method
