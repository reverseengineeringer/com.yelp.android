.class public final enum Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;
.super Ljava/lang/Enum;
.source "MergedQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SetId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

.field public static final enum S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

.field public static final enum S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    const-string/jumbo v1, "S0"

    invoke-direct {v0, v1, v2}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    .line 230
    new-instance v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    const-string/jumbo v1, "S1"

    invoke-direct {v0, v1, v3}, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    sget-object v1, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S0:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->S1:Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    aput-object v1, v0, v3

    sput-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->$VALUES:[Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

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
    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;
    .locals 1

    .prologue
    .line 228
    const-class v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    return-object v0
.end method

.method public static values()[Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->$VALUES:[Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    invoke-virtual {v0}, [Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/path/android/jobqueue/nonPersistentQueue/MergedQueue$SetId;

    return-object v0
.end method
