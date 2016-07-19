.class Lcom/google/android/gms/measurement/internal/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/measurement/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/e;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e$4;->b:Lcom/google/android/gms/measurement/internal/e;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/e$4;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e$4;->b:Lcom/google/android/gms/measurement/internal/e;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/e$4;->a:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->a(Lcom/google/android/gms/measurement/internal/e;J)V

    return-void
.end method
