.class Lcom/google/android/gms/maps/c$5;
.super Lcom/yelp/android/bj/ac$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/c$f;

.field final synthetic b:Lcom/google/android/gms/maps/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/c$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/c$5;->b:Lcom/google/android/gms/maps/c;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$5;->a:Lcom/google/android/gms/maps/c$f;

    invoke-direct {p0}, Lcom/yelp/android/bj/ac$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/c$5;->a:Lcom/google/android/gms/maps/c$f;

    invoke-interface {v0}, Lcom/google/android/gms/maps/c$f;->a()V

    return-void
.end method
