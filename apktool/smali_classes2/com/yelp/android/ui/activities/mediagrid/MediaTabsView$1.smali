.class Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$1;
.super Ljava/lang/Object;
.source "MediaTabsView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a(Ljava/util/List;Lcom/yelp/android/serializable/MediaCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-static {v0, p0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$1;->a:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)V

    .line 64
    return-void
.end method
