.class Lcom/google/android/gms/maps/MapView$a$1;
.super Lcom/yelp/android/bj/ae$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/MapView$a;->a(Lcom/google/android/gms/maps/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/e;

.field final synthetic b:Lcom/google/android/gms/maps/MapView$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/MapView$a;Lcom/google/android/gms/maps/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/MapView$a$1;->b:Lcom/google/android/gms/maps/MapView$a;

    iput-object p2, p0, Lcom/google/android/gms/maps/MapView$a$1;->a:Lcom/google/android/gms/maps/e;

    invoke-direct {p0}, Lcom/yelp/android/bj/ae$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/bj/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a$1;->a:Lcom/google/android/gms/maps/e;

    new-instance v1, Lcom/google/android/gms/maps/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/c;-><init>(Lcom/yelp/android/bj/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/e;->a(Lcom/google/android/gms/maps/c;)V

    return-void
.end method
