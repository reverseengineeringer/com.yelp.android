.class Lcom/google/android/gms/ads/internal/request/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hu$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/c;->c()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hu$c",
        "<",
        "Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/request/i;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/c;Lcom/google/android/gms/ads/internal/request/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/c$1;->b:Lcom/google/android/gms/ads/internal/request/c;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/c$1;->a:Lcom/google/android/gms/ads/internal/request/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/c$1;->b:Lcom/google/android/gms/ads/internal/request/c;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/c$1;->a:Lcom/google/android/gms/ads/internal/request/i;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/request/c;->a(Lcom/google/android/gms/ads/internal/request/i;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/c$1;->b:Lcom/google/android/gms/ads/internal/request/c;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/request/c;->a()V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/request/c$1;->a(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V

    return-void
.end method
