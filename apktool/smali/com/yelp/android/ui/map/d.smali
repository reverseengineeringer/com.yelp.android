.class public Lcom/yelp/android/ui/map/d;
.super Ljava/lang/Object;
.source "EventInfoWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/c$d;
.implements Lcom/yelp/android/ui/map/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/maps/c$d;",
        "Lcom/yelp/android/ui/map/e",
        "<",
        "Lcom/yelp/android/serializable/Event;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/map/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/e$a",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/map/d;->a:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/map/d;->b:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;
    .locals 3

    .prologue
    .line 59
    new-instance v1, Lcom/yelp/android/ui/panels/d;

    iget-object v0, p0, Lcom/yelp/android/ui/map/d;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/panels/d;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/map/d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/d;->a()V

    .line 63
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/d;->a(Lcom/yelp/android/serializable/Event;)V

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/yelp/android/ui/map/d;->c:Lcom/yelp/android/ui/map/e$a;

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/yelp/android/ui/map/d;->c:Lcom/yelp/android/ui/map/e$a;

    invoke-interface {v2, v0}, Lcom/yelp/android/ui/map/e$a;->b(Ljava/lang/Object;)V

    .line 68
    :cond_1
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/map/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 48
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Event;Lcom/google/android/gms/maps/model/c;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/map/d;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public a(Lcom/yelp/android/ui/map/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/map/e$a",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yelp/android/ui/map/d;->c:Lcom/yelp/android/ui/map/e$a;

    .line 74
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/maps/model/c;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/yelp/android/serializable/Event;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/map/d;->a(Lcom/yelp/android/serializable/Event;Lcom/google/android/gms/maps/model/c;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/google/android/gms/maps/model/c;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/map/d;->c:Lcom/yelp/android/ui/map/e$a;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/map/d;->c:Lcom/yelp/android/ui/map/e$a;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/d;->d(Lcom/google/android/gms/maps/model/c;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/map/e$a;->a(Ljava/lang/Object;)V

    .line 81
    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/gms/maps/model/c;)Lcom/yelp/android/serializable/Event;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/map/d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    return-object v0
.end method

.method public synthetic e(Lcom/google/android/gms/maps/model/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/d;->d(Lcom/google/android/gms/maps/model/c;)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method
