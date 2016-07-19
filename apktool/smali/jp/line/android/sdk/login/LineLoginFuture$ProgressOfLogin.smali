.class public final enum Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/line/android/sdk/login/LineLoginFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressOfLogin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum CANCELED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum FAILED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum GOT_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum GOT_REQUEST_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum REQUESTED_ACCESS_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum REQUESTED_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum STARTED_A2A_LOGIN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum STARTED_WEB_LOGIN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

.field public static final enum SUCCESS:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;


# instance fields
.field public final code:I

.field public final flowNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x64

    const/4 v6, 0x3

    const/4 v5, 0x0

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v5, v5, v5}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "REQUESTED_OTP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2, v8}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->REQUESTED_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "GOT_OTP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v9, v2, v9}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "STARTED_A2A_LOGIN"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v6, v2, v6}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED_A2A_LOGIN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "STARTED_WEB_LOGIN"

    const/4 v2, 0x4

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3, v6}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED_WEB_LOGIN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "GOT_REQUEST_TOKEN"

    const/4 v2, 0x5

    const/16 v3, 0x16

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_REQUEST_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "REQUESTED_ACCESS_TOKEN"

    const/4 v2, 0x6

    const/16 v3, 0x1e

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->REQUESTED_ACCESS_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "SUCCESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v7, v7}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->SUCCESS:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "FAILED"

    const/16 v2, 0x8

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3, v7}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->FAILED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    new-instance v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const-string/jumbo v1, "CANCELED"

    const/16 v2, 0x9

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3, v7}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->CANCELED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    const/16 v0, 0xa

    new-array v0, v0, [Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v1, v0, v5

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->REQUESTED_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v1, v0, v8

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_OTP:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v1, v0, v9

    sget-object v1, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED_A2A_LOGIN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED_WEB_LOGIN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->GOT_REQUEST_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->REQUESTED_ACCESS_TOKEN:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->SUCCESS:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->FAILED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->CANCELED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    aput-object v2, v0, v1

    sput-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->$VALUES:[Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->code:I

    iput p4, p0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->flowNumber:I

    return-void
.end method

.method public static findValueByCode(I)Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;
    .locals 5

    invoke-static {}, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->values()[Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->code:I

    if-ne v4, p0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->STARTED:Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;
    .locals 1

    const-class v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    return-object v0
.end method

.method public static values()[Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;
    .locals 1

    sget-object v0, Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->$VALUES:[Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    invoke-virtual {v0}, [Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/line/android/sdk/login/LineLoginFuture$ProgressOfLogin;

    return-object v0
.end method
