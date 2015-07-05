.class Lcom/yelp/android/ui/map/z;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/maps/GoogleMap;

.field private final b:Lcom/google/android/gms/maps/CameraUpdate;

.field private final c:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/map/z;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 536
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/yelp/android/ui/map/z;->a:Lcom/google/android/gms/maps/GoogleMap;

    .line 530
    iput-object p2, p0, Lcom/yelp/android/ui/map/z;->b:Lcom/google/android/gms/maps/CameraUpdate;

    .line 531
    iput-object p3, p0, Lcom/yelp/android/ui/map/z;->c:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    .line 532
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/yelp/android/ui/map/z;->c:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/map/z;->a:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/yelp/android/ui/map/z;->b:Lcom/google/android/gms/maps/CameraUpdate;

    iget-object v2, p0, Lcom/yelp/android/ui/map/z;->c:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 545
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/map/z;->a:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/yelp/android/ui/map/z;->b:Lcom/google/android/gms/maps/CameraUpdate;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto :goto_0
.end method
