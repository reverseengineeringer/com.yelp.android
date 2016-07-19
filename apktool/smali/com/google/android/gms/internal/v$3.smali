.class Lcom/google/android/gms/internal/v$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hu$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/v;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/gr;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/w;Lcom/google/android/gms/internal/db;)V
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
        "Lcom/google/android/gms/internal/dc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/v$3;->a:Lcom/google/android/gms/internal/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/dc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/v$3;->a:Lcom/google/android/gms/internal/v;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/v;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/v$3;->a:Lcom/google/android/gms/internal/v;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/internal/dc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v$3;->a:Lcom/google/android/gms/internal/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/v;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/v$3;->a:Lcom/google/android/gms/internal/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/v;->b(Z)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/dc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/v$3;->a(Lcom/google/android/gms/internal/dc;)V

    return-void
.end method
