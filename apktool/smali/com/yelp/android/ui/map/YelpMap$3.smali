.class Lcom/yelp/android/ui/map/YelpMap$3;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/google/android/gms/maps/model/CameraPosition;Lcom/google/android/gms/maps/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/CameraPosition;

.field final synthetic b:Lcom/google/android/gms/maps/c$a;

.field final synthetic c:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/model/CameraPosition;Lcom/google/android/gms/maps/c$a;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap$3;->c:Lcom/yelp/android/ui/map/YelpMap;

    iput-object p2, p0, Lcom/yelp/android/ui/map/YelpMap$3;->a:Lcom/google/android/gms/maps/model/CameraPosition;

    iput-object p3, p0, Lcom/yelp/android/ui/map/YelpMap$3;->b:Lcom/google/android/gms/maps/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap$3;->a:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {v0}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/a;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/yelp/android/ui/map/YelpMap$3;->b:Lcom/google/android/gms/maps/c$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;Lcom/google/android/gms/maps/c$a;)V

    .line 322
    return-void
.end method
