.class public final Lcom/google/android/gms/internal/ke;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/kd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ke$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ke$1;-><init>(Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ke$1;->gE()Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
