.class Lcom/google/android/gms/analytics/internal/p$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/p;->a(Lcom/google/android/gms/analytics/internal/ai;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/ai;

.field final synthetic b:Lcom/google/android/gms/analytics/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/p;Lcom/google/android/gms/analytics/internal/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/p$6;->b:Lcom/google/android/gms/analytics/internal/p;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/p$6;->a:Lcom/google/android/gms/analytics/internal/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/p$6;->b:Lcom/google/android/gms/analytics/internal/p;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/p;->a(Lcom/google/android/gms/analytics/internal/p;)Lcom/google/android/gms/analytics/internal/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/p$6;->a:Lcom/google/android/gms/analytics/internal/ai;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/z;->a(Lcom/google/android/gms/analytics/internal/ai;)V

    return-void
.end method
