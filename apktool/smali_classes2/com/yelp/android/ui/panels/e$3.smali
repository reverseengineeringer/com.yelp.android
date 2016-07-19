.class Lcom/yelp/android/ui/panels/e$3;
.super Lcom/yelp/android/ui/map/h;
.source "SearchPanelMapCallout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/e;->a(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/SearchAction;

.field final synthetic b:Lcom/yelp/android/ui/panels/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/e;Lcom/yelp/android/serializable/SearchAction;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yelp/android/ui/panels/e$3;->b:Lcom/yelp/android/ui/panels/e;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/e$3;->a:Lcom/yelp/android/serializable/SearchAction;

    invoke-direct {p0}, Lcom/yelp/android/ui/map/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/yelp/android/ui/panels/e$3;->b:Lcom/yelp/android/ui/panels/e;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/e;->a(Lcom/yelp/android/ui/panels/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/yelp/android/ui/panels/e$3;->b:Lcom/yelp/android/ui/panels/e;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/e;->b(Lcom/yelp/android/ui/panels/e;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e$3;->b:Lcom/yelp/android/ui/panels/e;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/panels/e;->a(Lcom/yelp/android/ui/panels/e;J)J

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e$3;->a:Lcom/yelp/android/serializable/SearchAction;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/e$3;->b:Lcom/yelp/android/ui/panels/e;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/e;->d(Lcom/yelp/android/ui/panels/e;)Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/e$3;->b:Lcom/yelp/android/ui/panels/e;

    invoke-static {v2}, Lcom/yelp/android/ui/panels/e;->c(Lcom/yelp/android/ui/panels/e;)Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/panels/e$3;->b:Lcom/yelp/android/ui/panels/e;

    invoke-static {v3}, Lcom/yelp/android/ui/panels/e;->e(Lcom/yelp/android/ui/panels/e;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/serializable/SearchAction;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/BusinessSearchResult;Ljava/lang/String;)V

    goto :goto_0
.end method
