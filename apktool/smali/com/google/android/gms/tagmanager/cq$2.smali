.class Lcom/google/android/gms/tagmanager/cq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic asK:Lcom/google/android/gms/tagmanager/cq;

.field final synthetic asL:Lcom/google/android/gms/internal/pu$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cq;Lcom/google/android/gms/internal/pu$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cq$2;->asK:Lcom/google/android/gms/tagmanager/cq;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cq$2;->asL:Lcom/google/android/gms/internal/pu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$2;->asK:Lcom/google/android/gms/tagmanager/cq;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cq$2;->asL:Lcom/google/android/gms/internal/pu$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cq;->c(Lcom/google/android/gms/internal/pu$a;)Z

    return-void
.end method
