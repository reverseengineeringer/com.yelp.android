.class Lcom/google/android/gms/internal/fa$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic to:Lcom/google/android/gms/internal/fa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fa$1;->to:Lcom/google/android/gms/internal/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fa$1;->to:Lcom/google/android/gms/internal/fa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fa;->onStop()V

    return-void
.end method
