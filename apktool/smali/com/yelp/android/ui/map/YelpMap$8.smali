.class Lcom/yelp/android/ui/map/YelpMap$8;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/map/YelpMap;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap$8;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap$8;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/map/e;->a()V

    .line 497
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap$8;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap$8;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-static {v0}, Lcom/yelp/android/ui/map/YelpMap;->b(Lcom/yelp/android/ui/map/YelpMap;)Lcom/yelp/android/ui/map/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/yelp/android/ui/map/YelpMap;Z)V

    .line 498
    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->b()V

    .line 499
    return-void

    .line 497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
