.class Lcom/google/android/gms/measurement/AppMeasurementService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/AppMeasurementService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/AppMeasurementService$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/AppMeasurementService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->a:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->a:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->d:Lcom/google/android/gms/measurement/AppMeasurementService;

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->a:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget v1, v1, Lcom/google/android/gms/measurement/AppMeasurementService$1;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/AppMeasurementService;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->a:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->d()Lcom/google/android/gms/measurement/internal/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/n;->N()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->a:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->c:Lcom/google/android/gms/measurement/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->z()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v0

    const-string/jumbo v1, "Device AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;->a:Lcom/google/android/gms/measurement/AppMeasurementService$1;

    iget-object v0, v0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->c:Lcom/google/android/gms/measurement/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->z()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v0

    const-string/jumbo v1, "Local AppMeasurementService processed last upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
