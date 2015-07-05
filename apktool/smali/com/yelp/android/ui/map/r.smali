.class public Lcom/yelp/android/ui/map/r;
.super Ljava/lang/Object;
.source "StaticIconMaker.java"

# interfaces
.implements Lcom/yelp/android/ui/map/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/by;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/yelp/android/ui/map/r;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/by;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/maps/model/BitmapDescriptor;"
        }
    .end annotation

    .prologue
    .line 25
    iget v0, p0, Lcom/yelp/android/ui/map/r;->a:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method
