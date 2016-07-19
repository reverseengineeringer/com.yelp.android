.class public Lcom/yelp/android/ui/map/b;
.super Ljava/lang/Object;
.source "BusinessInfoWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/c$d;
.implements Lcom/yelp/android/ui/map/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yelp/android/serializable/LocalAd;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/maps/c$d;",
        "Lcom/yelp/android/ui/map/e",
        "<",
        "Lcom/yelp/android/ui/panels/businesssearch/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/panels/businesssearch/a;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/yelp/android/ui/map/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/e$a",
            "<",
            "Lcom/yelp/android/ui/panels/businesssearch/a;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yelp/android/ui/map/b;->a:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/map/b;->b:Ljava/util/Map;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;
    .locals 7

    .prologue
    .line 63
    new-instance v3, Lcom/yelp/android/ui/panels/d;

    iget-object v0, p0, Lcom/yelp/android/ui/map/b;->a:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/yelp/android/ui/panels/d;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/map/b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/a;

    .line 65
    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v3}, Lcom/yelp/android/ui/panels/d;->a()V

    .line 68
    const/4 v2, 0x0

    .line 69
    iget-object v1, p0, Lcom/yelp/android/ui/map/b;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 70
    iget-object v1, p0, Lcom/yelp/android/ui/map/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/LocalAd;

    .line 71
    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->m()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/yelp/android/ui/panels/d;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/LocalAd;)V

    .line 74
    const/4 v1, 0x1

    .line 80
    :goto_0
    if-nez v1, :cond_1

    .line 81
    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/yelp/android/ui/panels/d;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 84
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/map/b;->c:Lcom/yelp/android/ui/map/e$a;

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/yelp/android/ui/map/b;->c:Lcom/yelp/android/ui/map/e$a;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/map/e$a;->b(Ljava/lang/Object;)V

    .line 87
    :cond_2
    return-object v3

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/map/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 53
    return-void
.end method

.method public a(Lcom/yelp/android/ui/map/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/map/e$a",
            "<",
            "Lcom/yelp/android/ui/panels/businesssearch/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lcom/yelp/android/ui/map/b;->c:Lcom/yelp/android/ui/map/e$a;

    .line 93
    return-void
.end method

.method public a(Lcom/yelp/android/ui/panels/businesssearch/a;Lcom/google/android/gms/maps/model/c;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/map/b;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/maps/model/c;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/yelp/android/ui/panels/businesssearch/a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/map/b;->a(Lcom/yelp/android/ui/panels/businesssearch/a;Lcom/google/android/gms/maps/model/c;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yelp/android/ui/map/b;->d:Ljava/util/List;

    .line 43
    return-void
.end method

.method public b(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/maps/model/c;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/map/b;->c:Lcom/yelp/android/ui/map/e$a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/map/b;->c:Lcom/yelp/android/ui/map/e$a;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/b;->d(Lcom/google/android/gms/maps/model/c;)Lcom/yelp/android/ui/panels/businesssearch/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/map/e$a;->a(Ljava/lang/Object;)V

    .line 100
    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/gms/maps/model/c;)Lcom/yelp/android/ui/panels/businesssearch/a;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/map/b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/a;

    return-object v0
.end method

.method public synthetic e(Lcom/google/android/gms/maps/model/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/b;->d(Lcom/google/android/gms/maps/model/c;)Lcom/yelp/android/ui/panels/businesssearch/a;

    move-result-object v0

    return-object v0
.end method
