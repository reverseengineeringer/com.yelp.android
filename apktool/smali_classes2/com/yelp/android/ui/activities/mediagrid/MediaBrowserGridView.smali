.class public Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;
.super Landroid/widget/GridView;
.source "MediaBrowserGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;

.field private final b:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$1;-><init>(Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->b:Landroid/widget/AbsListView$OnScrollListener;

    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->b:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;)Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;

    return-object v0
.end method


# virtual methods
.method public setScrollToLoadCallback(Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;

    .line 33
    return-void
.end method
