.class Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;
.super Ljava/lang/Object;
.source "MediaTabsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a(Lcom/yelp/android/serializable/MediaCategory;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/MediaCategory;

.field final synthetic b:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;Lcom/yelp/android/serializable/MediaCategory;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;->b:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;->a:Lcom/yelp/android/serializable/MediaCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;->b:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->b(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;->b:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->b(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;->b:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->a(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;Landroid/view/View;)V

    .line 103
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;->b:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->b(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;Landroid/view/View;)Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;->b:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->c(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;->b:Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;->c(Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView;)Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$2;->a:Lcom/yelp/android/serializable/MediaCategory;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/MediaTabsView$a;->a(Lcom/yelp/android/serializable/MediaCategory;)V

    .line 108
    :cond_1
    return-void
.end method
