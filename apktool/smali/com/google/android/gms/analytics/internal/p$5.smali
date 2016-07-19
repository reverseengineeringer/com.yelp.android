.class Lcom/google/android/gms/analytics/internal/p$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/p;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/p;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/p$5;->a:Lcom/google/android/gms/analytics/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/p$5;->a:Lcom/google/android/gms/analytics/internal/p;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/p;->a(Lcom/google/android/gms/analytics/internal/p;)Lcom/google/android/gms/analytics/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/z;->h()V

    return-void
.end method
