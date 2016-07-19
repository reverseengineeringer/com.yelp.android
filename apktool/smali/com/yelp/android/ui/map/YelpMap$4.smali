.class Lcom/yelp/android/ui/map/YelpMap$4;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic b:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap$4;->b:Lcom/yelp/android/ui/map/YelpMap;

    iput-object p2, p0, Lcom/yelp/android/ui/map/YelpMap$4;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 2

    .prologue
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap$4;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    sget v1, Lcom/yelp/android/appdata/n;->a:I

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    new-instance v0, Lcom/yelp/android/ui/map/YelpMap$4$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/map/YelpMap$4$1;-><init>(Lcom/yelp/android/ui/map/YelpMap$4;Lcom/google/android/gms/maps/c;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$f;)V

    goto :goto_0
.end method
