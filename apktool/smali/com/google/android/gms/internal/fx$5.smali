.class final Lcom/google/android/gms/internal/fx$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ic$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fx;->b(Ljava/lang/String;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/internal/ic$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ax;

.field final synthetic b:Lcom/google/android/gms/internal/au;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$5;->a:Lcom/google/android/gms/internal/ax;

    iput-object p2, p0, Lcom/google/android/gms/internal/fx$5;->b:Lcom/google/android/gms/internal/au;

    iput-object p3, p0, Lcom/google/android/gms/internal/fx$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ib;Z)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$5;->a:Lcom/google/android/gms/internal/ax;

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$5;->b:Lcom/google/android/gms/internal/au;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fx$5;->a:Lcom/google/android/gms/internal/ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ax;->b()V

    const-string/jumbo v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$5;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
