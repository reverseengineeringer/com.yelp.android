.class public final enum Ljp/line/android/sdk/api/FutureStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/line/android/sdk/api/FutureStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/line/android/sdk/api/FutureStatus;

.field public static final enum CANCELED:Ljp/line/android/sdk/api/FutureStatus;

.field public static final enum FAILED:Ljp/line/android/sdk/api/FutureStatus;

.field public static final enum PROCESSING:Ljp/line/android/sdk/api/FutureStatus;

.field public static final enum SUCCESS:Ljp/line/android/sdk/api/FutureStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljp/line/android/sdk/api/FutureStatus;

    const-string/jumbo v1, "PROCESSING"

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/api/FutureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/FutureStatus;->PROCESSING:Ljp/line/android/sdk/api/FutureStatus;

    new-instance v0, Ljp/line/android/sdk/api/FutureStatus;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Ljp/line/android/sdk/api/FutureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/FutureStatus;->SUCCESS:Ljp/line/android/sdk/api/FutureStatus;

    new-instance v0, Ljp/line/android/sdk/api/FutureStatus;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v4}, Ljp/line/android/sdk/api/FutureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/FutureStatus;->FAILED:Ljp/line/android/sdk/api/FutureStatus;

    new-instance v0, Ljp/line/android/sdk/api/FutureStatus;

    const-string/jumbo v1, "CANCELED"

    invoke-direct {v0, v1, v5}, Ljp/line/android/sdk/api/FutureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/FutureStatus;->CANCELED:Ljp/line/android/sdk/api/FutureStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Ljp/line/android/sdk/api/FutureStatus;

    sget-object v1, Ljp/line/android/sdk/api/FutureStatus;->PROCESSING:Ljp/line/android/sdk/api/FutureStatus;

    aput-object v1, v0, v2

    sget-object v1, Ljp/line/android/sdk/api/FutureStatus;->SUCCESS:Ljp/line/android/sdk/api/FutureStatus;

    aput-object v1, v0, v3

    sget-object v1, Ljp/line/android/sdk/api/FutureStatus;->FAILED:Ljp/line/android/sdk/api/FutureStatus;

    aput-object v1, v0, v4

    sget-object v1, Ljp/line/android/sdk/api/FutureStatus;->CANCELED:Ljp/line/android/sdk/api/FutureStatus;

    aput-object v1, v0, v5

    sput-object v0, Ljp/line/android/sdk/api/FutureStatus;->$VALUES:[Ljp/line/android/sdk/api/FutureStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/line/android/sdk/api/FutureStatus;
    .locals 1

    const-class v0, Ljp/line/android/sdk/api/FutureStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/line/android/sdk/api/FutureStatus;

    return-object v0
.end method

.method public static values()[Ljp/line/android/sdk/api/FutureStatus;
    .locals 1

    sget-object v0, Ljp/line/android/sdk/api/FutureStatus;->$VALUES:[Ljp/line/android/sdk/api/FutureStatus;

    invoke-virtual {v0}, [Ljp/line/android/sdk/api/FutureStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/line/android/sdk/api/FutureStatus;

    return-object v0
.end method
