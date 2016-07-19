.class Lcom/google/android/gms/analytics/internal/z$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/z;->a(Lcom/google/android/gms/analytics/internal/ai;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/internal/ai;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/analytics/internal/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/z;Lcom/google/android/gms/analytics/internal/ai;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/z$5;->c:Lcom/google/android/gms/analytics/internal/z;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/z$5;->a:Lcom/google/android/gms/analytics/internal/ai;

    iput-wide p3, p0, Lcom/google/android/gms/analytics/internal/z$5;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/z$5;->c:Lcom/google/android/gms/analytics/internal/z;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/z$5;->a:Lcom/google/android/gms/analytics/internal/ai;

    iget-wide v2, p0, Lcom/google/android/gms/analytics/internal/z$5;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/internal/z;->a(Lcom/google/android/gms/analytics/internal/ai;J)V

    return-void
.end method
