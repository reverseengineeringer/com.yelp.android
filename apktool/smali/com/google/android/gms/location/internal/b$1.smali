.class Lcom/google/android/gms/location/internal/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/internal/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/location/internal/p",
        "<",
        "Lcom/google/android/gms/location/internal/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/internal/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/b$1;->a:Lcom/google/android/gms/location/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/b$1;->a:Lcom/google/android/gms/location/internal/b;

    invoke-static {v0}, Lcom/google/android/gms/location/internal/b;->a(Lcom/google/android/gms/location/internal/b;)V

    return-void
.end method

.method public b()Lcom/google/android/gms/location/internal/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/b$1;->a:Lcom/google/android/gms/location/internal/b;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/b;->zzqJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/i;

    return-object v0
.end method

.method public synthetic c()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/location/internal/b$1;->b()Lcom/google/android/gms/location/internal/i;

    move-result-object v0

    return-object v0
.end method
