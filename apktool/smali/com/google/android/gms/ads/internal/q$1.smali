.class Lcom/google/android/gms/ads/internal/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/q;->a(Lcom/google/android/gms/internal/gr$a;Lcom/google/android/gms/internal/ax;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gr$a;

.field final synthetic b:Lcom/google/android/gms/ads/internal/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/q;Lcom/google/android/gms/internal/gr$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/q$1;->b:Lcom/google/android/gms/ads/internal/q;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/q$1;->a:Lcom/google/android/gms/internal/gr$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/google/android/gms/ads/internal/q$1;->b:Lcom/google/android/gms/ads/internal/q;

    new-instance v0, Lcom/google/android/gms/internal/gr;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/q$1;->a:Lcom/google/android/gms/internal/gr$a;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/gr;-><init>(Lcom/google/android/gms/internal/gr$a;Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/di;Lcom/google/android/gms/internal/dt;Ljava/lang/String;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/ads/internal/formats/h$a;)V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/ads/internal/q;->b(Lcom/google/android/gms/internal/gr;)V

    return-void
.end method
