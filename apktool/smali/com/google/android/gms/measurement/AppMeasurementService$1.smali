.class Lcom/google/android/gms/measurement/AppMeasurementService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/AppMeasurementService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ag;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/measurement/internal/z;

.field final synthetic d:Lcom/google/android/gms/measurement/AppMeasurementService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/AppMeasurementService;Lcom/google/android/gms/measurement/internal/ag;ILcom/google/android/gms/measurement/internal/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->d:Lcom/google/android/gms/measurement/AppMeasurementService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->a:Lcom/google/android/gms/measurement/internal/ag;

    iput p3, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->b:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->c:Lcom/google/android/gms/measurement/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->a:Lcom/google/android/gms/measurement/internal/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ag;->B()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementService$1;->d:Lcom/google/android/gms/measurement/AppMeasurementService;

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementService;->a(Lcom/google/android/gms/measurement/AppMeasurementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/AppMeasurementService$1$1;-><init>(Lcom/google/android/gms/measurement/AppMeasurementService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
