.class final Lcom/google/android/gms/internal/fx$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/fw;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/fw;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/fz;

.field final synthetic d:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fw;Landroid/content/Context;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$4;->a:Lcom/google/android/gms/internal/fw;

    iput-object p2, p0, Lcom/google/android/gms/internal/fx$4;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/fx$4;->c:Lcom/google/android/gms/internal/fz;

    iput-object p4, p0, Lcom/google/android/gms/internal/fx$4;->d:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$4;->a:Lcom/google/android/gms/internal/fw;

    iget-object v0, v0, Lcom/google/android/gms/internal/fw;->c:Lcom/google/android/gms/internal/gf;

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$4;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/fx$4;->c:Lcom/google/android/gms/internal/fz;

    iget-object v3, p0, Lcom/google/android/gms/internal/fx$4;->d:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gf;->a(Landroid/content/Context;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    return-void
.end method
