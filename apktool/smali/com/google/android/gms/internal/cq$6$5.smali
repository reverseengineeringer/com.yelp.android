.class Lcom/google/android/gms/internal/cq$6$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cq$6;->a(Lcom/yelp/android/bb/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/bb/a;

.field final synthetic b:Lcom/google/android/gms/internal/cq$6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cq$6;Lcom/yelp/android/bb/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cq$6$5;->b:Lcom/google/android/gms/internal/cq$6;

    iput-object p2, p0, Lcom/google/android/gms/internal/cq$6$5;->a:Lcom/yelp/android/bb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/cr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/cr;->f:Lcom/yelp/android/bb/c;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/cr;->f:Lcom/yelp/android/bb/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/cq$6$5;->a:Lcom/yelp/android/bb/a;

    invoke-interface {v0, v1}, Lcom/yelp/android/bb/c;->a(Lcom/yelp/android/bb/a;)V

    :cond_0
    return-void
.end method
