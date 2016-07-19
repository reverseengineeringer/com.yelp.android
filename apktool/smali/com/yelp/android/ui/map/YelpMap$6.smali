.class Lcom/yelp/android/ui/map/YelpMap$6;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/map/YelpMap;->setInteractive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;Z)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap$6;->b:Lcom/yelp/android/ui/map/YelpMap;

    iput-boolean p2, p0, Lcom/yelp/android/ui/map/YelpMap$6;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 2

    .prologue
    .line 412
    invoke-virtual {p1}, Lcom/google/android/gms/maps/c;->c()Lcom/google/android/gms/maps/i;

    move-result-object v0

    .line 413
    iget-boolean v1, p0, Lcom/yelp/android/ui/map/YelpMap$6;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/i;->b(Z)V

    .line 414
    iget-boolean v1, p0, Lcom/yelp/android/ui/map/YelpMap$6;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/i;->a(Z)V

    .line 415
    return-void
.end method
