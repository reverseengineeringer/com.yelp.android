.class final Lcom/google/android/gms/internal/fx$2;
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
.field final synthetic a:Lcom/google/android/gms/internal/db;

.field final synthetic b:Lcom/google/android/gms/internal/fz;

.field final synthetic c:Lcom/google/android/gms/internal/ax;

.field final synthetic d:Lcom/google/android/gms/internal/au;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$2;->a:Lcom/google/android/gms/internal/db;

    iput-object p2, p0, Lcom/google/android/gms/internal/fx$2;->b:Lcom/google/android/gms/internal/fz;

    iput-object p3, p0, Lcom/google/android/gms/internal/fx$2;->c:Lcom/google/android/gms/internal/ax;

    iput-object p4, p0, Lcom/google/android/gms/internal/fx$2;->d:Lcom/google/android/gms/internal/au;

    iput-object p5, p0, Lcom/google/android/gms/internal/fx$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$2;->a:Lcom/google/android/gms/internal/db;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db;->b()Lcom/google/android/gms/internal/db$d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$2;->b:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fz;->a(Lcom/google/android/gms/internal/db$d;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$2;->c:Lcom/google/android/gms/internal/ax;

    iget-object v2, p0, Lcom/google/android/gms/internal/fx$2;->d:Lcom/google/android/gms/internal/au;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "rwc"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$2;->c:Lcom/google/android/gms/internal/ax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ax;->a()Lcom/google/android/gms/internal/au;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/fx$2$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/fx$2$1;-><init>(Lcom/google/android/gms/internal/fx$2;Lcom/google/android/gms/internal/au;)V

    new-instance v1, Lcom/google/android/gms/internal/fx$2$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/fx$2$2;-><init>(Lcom/google/android/gms/internal/fx$2;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/db$d;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V

    return-void
.end method
