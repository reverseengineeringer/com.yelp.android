.class public final enum Ljp/line/android/sdk/exception/LineSdkApiError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/line/android/sdk/exception/LineSdkApiError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/line/android/sdk/exception/LineSdkApiError;

.field public static final enum ILLEGAL_RESPONSE:Ljp/line/android/sdk/exception/LineSdkApiError;

.field public static final enum NOT_FOUND_ACCESS_TOKEN:Ljp/line/android/sdk/exception/LineSdkApiError;

.field public static final enum SERVER_ERROR:Ljp/line/android/sdk/exception/LineSdkApiError;

.field public static final enum UNKNOWN:Ljp/line/android/sdk/exception/LineSdkApiError;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljp/line/android/sdk/exception/LineSdkApiError;

    const-string/jumbo v1, "NOT_FOUND_ACCESS_TOKEN"

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/exception/LineSdkApiError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/exception/LineSdkApiError;->NOT_FOUND_ACCESS_TOKEN:Ljp/line/android/sdk/exception/LineSdkApiError;

    new-instance v0, Ljp/line/android/sdk/exception/LineSdkApiError;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3}, Ljp/line/android/sdk/exception/LineSdkApiError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/exception/LineSdkApiError;->SERVER_ERROR:Ljp/line/android/sdk/exception/LineSdkApiError;

    new-instance v0, Ljp/line/android/sdk/exception/LineSdkApiError;

    const-string/jumbo v1, "ILLEGAL_RESPONSE"

    invoke-direct {v0, v1, v4}, Ljp/line/android/sdk/exception/LineSdkApiError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/exception/LineSdkApiError;->ILLEGAL_RESPONSE:Ljp/line/android/sdk/exception/LineSdkApiError;

    new-instance v0, Ljp/line/android/sdk/exception/LineSdkApiError;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Ljp/line/android/sdk/exception/LineSdkApiError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/exception/LineSdkApiError;->UNKNOWN:Ljp/line/android/sdk/exception/LineSdkApiError;

    const/4 v0, 0x4

    new-array v0, v0, [Ljp/line/android/sdk/exception/LineSdkApiError;

    sget-object v1, Ljp/line/android/sdk/exception/LineSdkApiError;->NOT_FOUND_ACCESS_TOKEN:Ljp/line/android/sdk/exception/LineSdkApiError;

    aput-object v1, v0, v2

    sget-object v1, Ljp/line/android/sdk/exception/LineSdkApiError;->SERVER_ERROR:Ljp/line/android/sdk/exception/LineSdkApiError;

    aput-object v1, v0, v3

    sget-object v1, Ljp/line/android/sdk/exception/LineSdkApiError;->ILLEGAL_RESPONSE:Ljp/line/android/sdk/exception/LineSdkApiError;

    aput-object v1, v0, v4

    sget-object v1, Ljp/line/android/sdk/exception/LineSdkApiError;->UNKNOWN:Ljp/line/android/sdk/exception/LineSdkApiError;

    aput-object v1, v0, v5

    sput-object v0, Ljp/line/android/sdk/exception/LineSdkApiError;->$VALUES:[Ljp/line/android/sdk/exception/LineSdkApiError;

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

.method public static valueOf(Ljava/lang/String;)Ljp/line/android/sdk/exception/LineSdkApiError;
    .locals 1

    const-class v0, Ljp/line/android/sdk/exception/LineSdkApiError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/line/android/sdk/exception/LineSdkApiError;

    return-object v0
.end method

.method public static values()[Ljp/line/android/sdk/exception/LineSdkApiError;
    .locals 1

    sget-object v0, Ljp/line/android/sdk/exception/LineSdkApiError;->$VALUES:[Ljp/line/android/sdk/exception/LineSdkApiError;

    invoke-virtual {v0}, [Ljp/line/android/sdk/exception/LineSdkApiError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/line/android/sdk/exception/LineSdkApiError;

    return-object v0
.end method
