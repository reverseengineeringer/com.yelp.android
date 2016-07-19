.class public final enum Lcom/path/android/jobqueue/TagConstraint;
.super Ljava/lang/Enum;
.source "TagConstraint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/path/android/jobqueue/TagConstraint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/path/android/jobqueue/TagConstraint;

.field public static final enum ALL:Lcom/path/android/jobqueue/TagConstraint;

.field public static final enum ANY:Lcom/path/android/jobqueue/TagConstraint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/path/android/jobqueue/TagConstraint;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/path/android/jobqueue/TagConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/TagConstraint;->ALL:Lcom/path/android/jobqueue/TagConstraint;

    .line 5
    new-instance v0, Lcom/path/android/jobqueue/TagConstraint;

    const-string/jumbo v1, "ANY"

    invoke-direct {v0, v1, v3}, Lcom/path/android/jobqueue/TagConstraint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/TagConstraint;->ANY:Lcom/path/android/jobqueue/TagConstraint;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/path/android/jobqueue/TagConstraint;

    sget-object v1, Lcom/path/android/jobqueue/TagConstraint;->ALL:Lcom/path/android/jobqueue/TagConstraint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/path/android/jobqueue/TagConstraint;->ANY:Lcom/path/android/jobqueue/TagConstraint;

    aput-object v1, v0, v3

    sput-object v0, Lcom/path/android/jobqueue/TagConstraint;->$VALUES:[Lcom/path/android/jobqueue/TagConstraint;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/path/android/jobqueue/TagConstraint;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/path/android/jobqueue/TagConstraint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/TagConstraint;

    return-object v0
.end method

.method public static values()[Lcom/path/android/jobqueue/TagConstraint;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/path/android/jobqueue/TagConstraint;->$VALUES:[Lcom/path/android/jobqueue/TagConstraint;

    invoke-virtual {v0}, [Lcom/path/android/jobqueue/TagConstraint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/path/android/jobqueue/TagConstraint;

    return-object v0
.end method
