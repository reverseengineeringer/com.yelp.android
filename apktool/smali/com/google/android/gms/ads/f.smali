.class public final Lcom/google/android/gms/ads/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/client/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/d;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/d;->a()V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/d;->a(Lcom/google/android/gms/ads/a;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/ads/internal/client/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    check-cast p1, Lcom/google/android/gms/ads/internal/client/a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/d;->a(Lcom/google/android/gms/ads/internal/client/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/d;->a(Lcom/google/android/gms/ads/internal/client/a;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/ads/c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/c;->a()Lcom/google/android/gms/ads/internal/client/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/d;->a(Lcom/google/android/gms/ads/internal/client/b;)V

    return-void
.end method

.method public a(Lcom/yelp/android/be/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/d;->a(Lcom/yelp/android/be/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/d;->a(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/f;->a:Lcom/google/android/gms/ads/internal/client/d;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/d;->b(Ljava/lang/String;)V

    return-void
.end method
