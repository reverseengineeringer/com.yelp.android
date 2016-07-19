.class public final enum Ljp/line/android/sdk/api/ApiType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/line/android/sdk/api/ApiType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/line/android/sdk/api/ApiType;

.field public static final enum GET_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

.field public static final enum GET_FAVORITE_FRIENDS:Ljp/line/android/sdk/api/ApiType;

.field public static final enum GET_FRIENDS:Ljp/line/android/sdk/api/ApiType;

.field public static final enum GET_GROUPS:Ljp/line/android/sdk/api/ApiType;

.field public static final enum GET_GROUP_MEMBERS:Ljp/line/android/sdk/api/ApiType;

.field public static final enum GET_MY_PROFILE:Ljp/line/android/sdk/api/ApiType;

.field public static final enum GET_OTP:Ljp/line/android/sdk/api/ApiType;

.field public static final enum GET_PROFILES:Ljp/line/android/sdk/api/ApiType;

.field public static final enum GET_SAME_CHANNEL_FRIENDS:Ljp/line/android/sdk/api/ApiType;

.field public static final enum LOGOUT:Ljp/line/android/sdk/api/ApiType;

.field public static final enum POST_EVENT:Ljp/line/android/sdk/api/ApiType;

.field public static final enum REFRESH_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

.field public static final enum UPLOAD_PROFILE_IMAGE:Ljp/line/android/sdk/api/ApiType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "GET_OTP"

    invoke-direct {v0, v1, v3}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->GET_OTP:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "LOGOUT"

    invoke-direct {v0, v1, v4}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->LOGOUT:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "GET_ACCESS_TOKEN"

    invoke-direct {v0, v1, v5}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->GET_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "REFRESH_ACCESS_TOKEN"

    invoke-direct {v0, v1, v6}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->REFRESH_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "GET_MY_PROFILE"

    invoke-direct {v0, v1, v7}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->GET_MY_PROFILE:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "GET_FRIENDS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->GET_FRIENDS:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "GET_FAVORITE_FRIENDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->GET_FAVORITE_FRIENDS:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "GET_PROFILES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->GET_PROFILES:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "GET_SAME_CHANNEL_FRIENDS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->GET_SAME_CHANNEL_FRIENDS:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "UPLOAD_PROFILE_IMAGE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->UPLOAD_PROFILE_IMAGE:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "POST_EVENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->POST_EVENT:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "GET_GROUPS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->GET_GROUPS:Ljp/line/android/sdk/api/ApiType;

    new-instance v0, Ljp/line/android/sdk/api/ApiType;

    const-string/jumbo v1, "GET_GROUP_MEMBERS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/api/ApiType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->GET_GROUP_MEMBERS:Ljp/line/android/sdk/api/ApiType;

    const/16 v0, 0xd

    new-array v0, v0, [Ljp/line/android/sdk/api/ApiType;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_OTP:Ljp/line/android/sdk/api/ApiType;

    aput-object v1, v0, v3

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->LOGOUT:Ljp/line/android/sdk/api/ApiType;

    aput-object v1, v0, v4

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

    aput-object v1, v0, v5

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->REFRESH_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

    aput-object v1, v0, v6

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_MY_PROFILE:Ljp/line/android/sdk/api/ApiType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_FRIENDS:Ljp/line/android/sdk/api/ApiType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_FAVORITE_FRIENDS:Ljp/line/android/sdk/api/ApiType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_PROFILES:Ljp/line/android/sdk/api/ApiType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_SAME_CHANNEL_FRIENDS:Ljp/line/android/sdk/api/ApiType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->UPLOAD_PROFILE_IMAGE:Ljp/line/android/sdk/api/ApiType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->POST_EVENT:Ljp/line/android/sdk/api/ApiType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_GROUPS:Ljp/line/android/sdk/api/ApiType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_GROUP_MEMBERS:Ljp/line/android/sdk/api/ApiType;

    aput-object v2, v0, v1

    sput-object v0, Ljp/line/android/sdk/api/ApiType;->$VALUES:[Ljp/line/android/sdk/api/ApiType;

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

.method public static valueOf(Ljava/lang/String;)Ljp/line/android/sdk/api/ApiType;
    .locals 1

    const-class v0, Ljp/line/android/sdk/api/ApiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/line/android/sdk/api/ApiType;

    return-object v0
.end method

.method public static values()[Ljp/line/android/sdk/api/ApiType;
    .locals 1

    sget-object v0, Ljp/line/android/sdk/api/ApiType;->$VALUES:[Ljp/line/android/sdk/api/ApiType;

    invoke-virtual {v0}, [Ljp/line/android/sdk/api/ApiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/line/android/sdk/api/ApiType;

    return-object v0
.end method
