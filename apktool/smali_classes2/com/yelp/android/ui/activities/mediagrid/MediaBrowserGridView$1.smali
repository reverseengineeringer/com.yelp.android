.class Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$1;
.super Ljava/lang/Object;
.source "MediaBrowserGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    int-to-double v2, p4

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->a(Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;)Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->a(Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;)Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;->c()V

    .line 54
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
