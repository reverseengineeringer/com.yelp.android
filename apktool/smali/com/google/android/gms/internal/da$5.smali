.class Lcom/google/android/gms/internal/da$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/gms/internal/da;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/da;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/da$5;->b:Lcom/google/android/gms/internal/da;

    iput-object p2, p0, Lcom/google/android/gms/internal/da$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/da$5;->b:Lcom/google/android/gms/internal/da;

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->a(Lcom/google/android/gms/internal/da;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/da$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ib;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
