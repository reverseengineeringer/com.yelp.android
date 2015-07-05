.class Lcom/yelp/android/ui/map/ac;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/map/ab;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/ab;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/yelp/android/ui/map/ac;->a:Lcom/yelp/android/ui/map/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/yelp/android/ui/map/ac;->a:Lcom/yelp/android/ui/map/ab;

    invoke-static {v0}, Lcom/yelp/android/ui/map/ab;->b(Lcom/yelp/android/ui/map/ab;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/map/ac;->a:Lcom/yelp/android/ui/map/ab;

    invoke-static {v1}, Lcom/yelp/android/ui/map/ab;->a(Lcom/yelp/android/ui/map/ab;)Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setOnCameraUpdate(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 589
    return-void
.end method
