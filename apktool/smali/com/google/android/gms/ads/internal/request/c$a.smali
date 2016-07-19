.class public final Lcom/google/android/gms/ads/internal/request/c$a;
.super Lcom/google/android/gms/ads/internal/request/c;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/request/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/hu",
            "<",
            "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
            ">;",
            "Lcom/google/android/gms/ads/internal/request/b$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/ads/internal/request/c;-><init>(Lcom/google/android/gms/internal/hu;Lcom/google/android/gms/ads/internal/request/b$a;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/c$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Lcom/google/android/gms/ads/internal/request/i;
    .locals 3

    new-instance v1, Lcom/google/android/gms/internal/ah;

    sget-object v0, Lcom/google/android/gms/internal/ao;->b:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ah;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/c$a;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/fw;->a()Lcom/google/android/gms/internal/fw;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/fx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/fw;)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/request/c;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
