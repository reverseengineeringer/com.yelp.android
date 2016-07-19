.class public Lcom/yelp/android/ui/util/x;
.super Lcom/yelp/android/ui/util/e;
.source "LoadingAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 18
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 19
    instance-of v0, v1, Lcom/yelp/android/ui/panels/PanelLoading;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 20
    check-cast v0, Lcom/yelp/android/ui/panels/PanelLoading;

    .line 21
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelLoading;->b()V

    .line 23
    :cond_0
    return-object v1
.end method
