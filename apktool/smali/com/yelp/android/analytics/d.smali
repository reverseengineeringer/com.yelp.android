.class public abstract Lcom/yelp/android/analytics/d;
.super Ljava/lang/Object;
.source "EventAnalyticClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/yelp/android/analytics/iris/EventIri;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/analytics/d;->a:Lcom/yelp/android/analytics/iris/EventIri;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/analytics/d;->b:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/analytics/d;->a:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/analytics/d;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 32
    invoke-virtual {p0, p1}, Lcom/yelp/android/analytics/d;->a(Landroid/view/View;)V

    .line 33
    return-void
.end method
