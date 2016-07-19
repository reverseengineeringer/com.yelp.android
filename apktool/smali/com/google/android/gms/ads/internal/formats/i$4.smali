.class Lcom/google/android/gms/ads/internal/formats/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/i;->d()Lcom/google/android/gms/internal/ib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/i$4;->a:Lcom/google/android/gms/ads/internal/formats/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ib;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ib;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/i$4;->a:Lcom/google/android/gms/ads/internal/formats/i;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/i;->c(Lcom/google/android/gms/ads/internal/formats/i;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->b()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
