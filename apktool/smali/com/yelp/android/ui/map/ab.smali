.class Lcom/yelp/android/ui/map/ab;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/map/YelpMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/YelpMap",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/map/YelpMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/map/YelpMap",
            "<+TT;>;",
            "Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object p1, p0, Lcom/yelp/android/ui/map/ab;->a:Lcom/yelp/android/ui/map/YelpMap;

    .line 574
    iput-object p2, p0, Lcom/yelp/android/ui/map/ab;->b:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    .line 575
    iput p3, p0, Lcom/yelp/android/ui/map/ab;->c:I

    .line 576
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/ab;)Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/map/ab;->b:Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/map/ab;)Lcom/yelp/android/ui/map/YelpMap;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/map/ab;->a:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/yelp/android/ui/map/ab;->onFinish()V

    .line 581
    return-void
.end method

.method public onFinish()V
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lcom/yelp/android/ui/map/ab;->a:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Lcom/yelp/android/ui/map/ac;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/map/ac;-><init>(Lcom/yelp/android/ui/map/ab;)V

    iget v2, p0, Lcom/yelp/android/ui/map/ab;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/map/YelpMap;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 591
    return-void
.end method
