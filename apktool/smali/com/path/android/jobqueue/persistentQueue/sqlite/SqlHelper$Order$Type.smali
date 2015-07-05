.class public final enum Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;
.super Ljava/lang/Enum;
.source "SqlHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

.field public static final enum ASC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

.field public static final enum DESC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    const-string/jumbo v1, "ASC"

    invoke-direct {v0, v1, v2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->ASC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    .line 198
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    const-string/jumbo v1, "DESC"

    invoke-direct {v0, v1, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->DESC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    .line 196
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->ASC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->DESC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->$VALUES:[Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

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
    .line 196
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;
    .locals 1

    .prologue
    .line 196
    const-class v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    return-object v0
.end method

.method public static values()[Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->$VALUES:[Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    invoke-virtual {v0}, [Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    return-object v0
.end method
