.class public Lcom/yelp/android/ui/map/m;
.super Ljava/lang/Object;
.source "StaticIconMaker.java"

# interfaces
.implements Lcom/yelp/android/ui/map/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/f;",
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
    iput p1, p0, Lcom/yelp/android/ui/map/m;->a:I

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/f;)Lcom/google/android/gms/maps/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/maps/model/a;"
        }
    .end annotation

    .prologue
    .line 25
    iget v0, p0, Lcom/yelp/android/ui/map/m;->a:I

    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(I)Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    return-object v0
.end method
