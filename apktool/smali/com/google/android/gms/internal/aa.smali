.class Lcom/google/android/gms/internal/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ac;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ey;
.end annotation


# instance fields
.field private mt:Lcom/google/android/gms/internal/gu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aa;->mt:Lcom/google/android/gms/internal/gu;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/af;Z)V
    .locals 3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "isVisible"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/aa;->mt:Lcom/google/android/gms/internal/gu;

    const-string/jumbo v2, "onAdVisibilityChanged"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/gu;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
