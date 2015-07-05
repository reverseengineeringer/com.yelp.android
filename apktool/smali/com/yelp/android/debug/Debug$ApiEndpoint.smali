.class public final enum Lcom/yelp/android/debug/Debug$ApiEndpoint;
.super Ljava/lang/Enum;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/debug/Debug$ApiEndpoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/debug/Debug$ApiEndpoint;

.field public static final enum API:Lcom/yelp/android/debug/Debug$ApiEndpoint;

.field public static final enum AUTO_API:Lcom/yelp/android/debug/Debug$ApiEndpoint;

.field public static final enum BIZ_APP_DEV:Lcom/yelp/android/debug/Debug$ApiEndpoint;

.field public static final enum BIZ_APP_STAGE:Lcom/yelp/android/debug/Debug$ApiEndpoint;

.field public static final enum BIZ_APP_STAGE_A:Lcom/yelp/android/debug/Debug$ApiEndpoint;

.field public static final enum DEV_GARRICK_2:Lcom/yelp/android/debug/Debug$ApiEndpoint;


# instance fields
.field public final endpoint:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    new-instance v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;

    const-string/jumbo v1, "API"

    const-string/jumbo v2, "api"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/debug/Debug$ApiEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;->API:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    .line 49
    new-instance v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;

    const-string/jumbo v1, "AUTO_API"

    const-string/jumbo v2, "auto-api"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/debug/Debug$ApiEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;->AUTO_API:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    .line 50
    new-instance v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;

    const-string/jumbo v1, "DEV_GARRICK_2"

    const-string/jumbo v2, "garrick2.dev"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/debug/Debug$ApiEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;->DEV_GARRICK_2:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    .line 51
    new-instance v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;

    const-string/jumbo v1, "BIZ_APP_DEV"

    const-string/jumbo v2, "devservices3-r1-devc.dev"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/debug/Debug$ApiEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;->BIZ_APP_DEV:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    .line 52
    new-instance v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;

    const-string/jumbo v1, "BIZ_APP_STAGE"

    const-string/jumbo v2, "stagebservices3.sjc"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/debug/Debug$ApiEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;->BIZ_APP_STAGE:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    .line 53
    new-instance v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;

    const-string/jumbo v1, "BIZ_APP_STAGE_A"

    const/4 v2, 0x5

    const-string/jumbo v3, "stageaservices4.sldev"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/debug/Debug$ApiEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;->BIZ_APP_STAGE_A:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    .line 47
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yelp/android/debug/Debug$ApiEndpoint;

    sget-object v1, Lcom/yelp/android/debug/Debug$ApiEndpoint;->API:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/debug/Debug$ApiEndpoint;->AUTO_API:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/debug/Debug$ApiEndpoint;->DEV_GARRICK_2:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/debug/Debug$ApiEndpoint;->BIZ_APP_DEV:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/debug/Debug$ApiEndpoint;->BIZ_APP_STAGE:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/debug/Debug$ApiEndpoint;->BIZ_APP_STAGE_A:Lcom/yelp/android/debug/Debug$ApiEndpoint;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;->$VALUES:[Lcom/yelp/android/debug/Debug$ApiEndpoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/yelp/android/debug/Debug$ApiEndpoint;->endpoint:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/debug/Debug$ApiEndpoint;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/debug/Debug$ApiEndpoint;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/yelp/android/debug/Debug$ApiEndpoint;->$VALUES:[Lcom/yelp/android/debug/Debug$ApiEndpoint;

    invoke-virtual {v0}, [Lcom/yelp/android/debug/Debug$ApiEndpoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/debug/Debug$ApiEndpoint;

    return-object v0
.end method
