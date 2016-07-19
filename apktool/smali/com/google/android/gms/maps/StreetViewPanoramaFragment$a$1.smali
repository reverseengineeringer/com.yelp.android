.class Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a$1;
.super Lcom/yelp/android/bj/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;->a(Lcom/google/android/gms/maps/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/f;

.field final synthetic b:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;Lcom/google/android/gms/maps/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a$1;->b:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a$1;->a:Lcom/google/android/gms/maps/f;

    invoke-direct {p0}, Lcom/yelp/android/bj/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/bj/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a$1;->a:Lcom/google/android/gms/maps/f;

    new-instance v1, Lcom/google/android/gms/maps/h;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/h;-><init>(Lcom/yelp/android/bj/g;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/f;->a(Lcom/google/android/gms/maps/h;)V

    return-void
.end method
