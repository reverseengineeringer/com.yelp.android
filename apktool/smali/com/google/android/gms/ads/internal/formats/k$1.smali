.class Lcom/google/android/gms/ads/internal/formats/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/k;->a(Lcom/google/android/gms/dynamic/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/formats/i;

.field final synthetic b:Lcom/google/android/gms/ads/internal/formats/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/k;Lcom/google/android/gms/ads/internal/formats/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/k$1;->b:Lcom/google/android/gms/ads/internal/formats/k;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/k$1;->a:Lcom/google/android/gms/ads/internal/formats/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/k$1;->a:Lcom/google/android/gms/ads/internal/formats/i;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/i;->d()Lcom/google/android/gms/internal/ib;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/k$1;->b:Lcom/google/android/gms/ads/internal/formats/k;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/k;->a(Lcom/google/android/gms/ads/internal/formats/k;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
