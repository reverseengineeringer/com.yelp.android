.class public final enum Lcom/path/android/jobqueue/JobStatus;
.super Ljava/lang/Enum;
.source "JobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/path/android/jobqueue/JobStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/path/android/jobqueue/JobStatus;

.field public static final enum RUNNING:Lcom/path/android/jobqueue/JobStatus;

.field public static final enum UNKNOWN:Lcom/path/android/jobqueue/JobStatus;

.field public static final enum WAITING_NOT_READY:Lcom/path/android/jobqueue/JobStatus;

.field public static final enum WAITING_READY:Lcom/path/android/jobqueue/JobStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/path/android/jobqueue/JobStatus;

    const-string/jumbo v1, "WAITING_NOT_READY"

    invoke-direct {v0, v1, v2}, Lcom/path/android/jobqueue/JobStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/JobStatus;->WAITING_NOT_READY:Lcom/path/android/jobqueue/JobStatus;

    .line 19
    new-instance v0, Lcom/path/android/jobqueue/JobStatus;

    const-string/jumbo v1, "WAITING_READY"

    invoke-direct {v0, v1, v3}, Lcom/path/android/jobqueue/JobStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/JobStatus;->WAITING_READY:Lcom/path/android/jobqueue/JobStatus;

    .line 23
    new-instance v0, Lcom/path/android/jobqueue/JobStatus;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/path/android/jobqueue/JobStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/JobStatus;->RUNNING:Lcom/path/android/jobqueue/JobStatus;

    .line 35
    new-instance v0, Lcom/path/android/jobqueue/JobStatus;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/path/android/jobqueue/JobStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/JobStatus;->UNKNOWN:Lcom/path/android/jobqueue/JobStatus;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/path/android/jobqueue/JobStatus;

    sget-object v1, Lcom/path/android/jobqueue/JobStatus;->WAITING_NOT_READY:Lcom/path/android/jobqueue/JobStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/path/android/jobqueue/JobStatus;->WAITING_READY:Lcom/path/android/jobqueue/JobStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/path/android/jobqueue/JobStatus;->RUNNING:Lcom/path/android/jobqueue/JobStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/path/android/jobqueue/JobStatus;->UNKNOWN:Lcom/path/android/jobqueue/JobStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/path/android/jobqueue/JobStatus;->$VALUES:[Lcom/path/android/jobqueue/JobStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/path/android/jobqueue/JobStatus;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/path/android/jobqueue/JobStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/JobStatus;

    return-object v0
.end method

.method public static values()[Lcom/path/android/jobqueue/JobStatus;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/path/android/jobqueue/JobStatus;->$VALUES:[Lcom/path/android/jobqueue/JobStatus;

    invoke-virtual {v0}, [Lcom/path/android/jobqueue/JobStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/path/android/jobqueue/JobStatus;

    return-object v0
.end method
