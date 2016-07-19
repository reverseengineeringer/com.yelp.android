.class Lcom/yelp/android/ui/map/YelpMap$4$1;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/map/YelpMap$4;->a(Lcom/google/android/gms/maps/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/c;

.field final synthetic b:Lcom/yelp/android/ui/map/YelpMap$4;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap$4;Lcom/google/android/gms/maps/c;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap$4$1;->b:Lcom/yelp/android/ui/map/YelpMap$4;

    iput-object p2, p0, Lcom/yelp/android/ui/map/YelpMap$4$1;->a:Lcom/google/android/gms/maps/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap$4$1;->a:Lcom/google/android/gms/maps/c;

    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap$4$1;->b:Lcom/yelp/android/ui/map/YelpMap$4;

    iget-object v1, v1, Lcom/yelp/android/ui/map/YelpMap$4;->a:Lcom/google/android/gms/maps/model/LatLngBounds;

    sget v2, Lcom/yelp/android/appdata/n;->a:I

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 366
    return-void
.end method
