.class public Lcom/google/android/gms/internal/ab;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ey;
.end annotation


# instance fields
.field private final mu:Lcom/google/android/gms/internal/ab$a;

.field private final mv:Ljava/lang/Runnable;

.field private mw:Lcom/google/android/gms/internal/av;

.field private mx:Z

.field private my:Z

.field private mz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/u;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ab$a;

    sget-object v1, Lcom/google/android/gms/internal/gq;->wR:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ab$a;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ab;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/ab$a;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/ab$a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ab;->mx:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ab;->my:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ab;->mz:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ab;->mu:Lcom/google/android/gms/internal/ab$a;

    new-instance v0, Lcom/google/android/gms/internal/ab$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ab$1;-><init>(Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/u;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ab;->mv:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ab;)Lcom/google/android/gms/internal/av;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->mw:Lcom/google/android/gms/internal/av;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ab;->mx:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/av;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ab;->mx:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "An ad refresh is already scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ab;->mw:Lcom/google/android/gms/internal/av;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ab;->mx:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/ab;->mz:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ab;->my:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Scheduling ad refresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gr;->U(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->mu:Lcom/google/android/gms/internal/ab$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->mv:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/ab$a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public aD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ab;->mx:Z

    return v0
.end method

.method public c(Lcom/google/android/gms/internal/av;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ab;->a(Lcom/google/android/gms/internal/av;J)V

    return-void
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ab;->mx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->mu:Lcom/google/android/gms/internal/ab$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->mv:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ab$a;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ab;->my:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ab;->mx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->mu:Lcom/google/android/gms/internal/ab$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ab;->mv:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ab$a;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ab;->my:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ab;->mx:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ab;->mx:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ab;->mw:Lcom/google/android/gms/internal/av;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ab;->mz:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ab;->a(Lcom/google/android/gms/internal/av;J)V

    :cond_0
    return-void
.end method
