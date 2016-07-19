.class Lcom/yelp/android/ui/panels/e$1;
.super Ljava/lang/Object;
.source "SearchPanelMapCallout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/e;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yelp/android/ui/panels/e$1;->a:Lcom/yelp/android/ui/panels/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yelp/android/ui/panels/e$1;->a:Lcom/yelp/android/ui/panels/e;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/e;->a(Lcom/yelp/android/ui/panels/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/yelp/android/ui/panels/e$1;->a:Lcom/yelp/android/ui/panels/e;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/e;->b(Lcom/yelp/android/ui/panels/e;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e$1;->a:Lcom/yelp/android/ui/panels/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/panels/e;->a(Lcom/yelp/android/ui/panels/e;J)J

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e$1;->a:Lcom/yelp/android/ui/panels/e;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/e;->c(Lcom/yelp/android/ui/panels/e;)Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e$1;->a:Lcom/yelp/android/ui/panels/e;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/e;->d(Lcom/yelp/android/ui/panels/e;)Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/e$1;->a:Lcom/yelp/android/ui/panels/e;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/e;->c(Lcom/yelp/android/ui/panels/e;)Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->a(Lcom/yelp/android/serializable/BusinessSearchResult;)V

    goto :goto_0
.end method
