.class public interface abstract Lcom/yelp/android/ui/map/e;
.super Ljava/lang/Object;
.source "ItemInfoWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;"
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/yelp/android/ui/map/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/map/f",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Lcom/google/android/gms/maps/model/Marker;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/maps/model/Marker;",
            ")V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/Marker;",
            ")TT;"
        }
    .end annotation
.end method
