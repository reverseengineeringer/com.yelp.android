.class public Lcom/yelp/android/ui/util/ak;
.super Lcom/yelp/android/analytics/d;
.source "StartActivityOnClickListener.java"


# instance fields
.field final a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/yelp/android/ui/util/ak;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    .line 46
    iput-object p3, p0, Lcom/yelp/android/ui/util/ak;->a:Landroid/content/Intent;

    .line 47
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/ak;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
