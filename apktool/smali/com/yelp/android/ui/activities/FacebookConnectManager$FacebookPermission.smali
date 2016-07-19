.class public final enum Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;
.super Ljava/lang/Enum;
.source "FacebookConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/FacebookConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FacebookPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

.field public static final enum EMAIL:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

.field public static final enum PUBLIC_PROFILE:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

.field public static final enum PUBLISH_ACTIONS:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

.field public static final enum USER_BIRTHDAY:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

.field public static final enum USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;


# instance fields
.field private final mPermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    const-string/jumbo v1, "PUBLIC_PROFILE"

    const-string/jumbo v2, "public_profile"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLIC_PROFILE:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    .line 151
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    const-string/jumbo v1, "USER_FRIEND"

    const-string/jumbo v2, "user_friends"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    .line 153
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    const-string/jumbo v1, "PUBLISH_ACTIONS"

    const-string/jumbo v2, "publish_actions"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLISH_ACTIONS:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    .line 155
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    const-string/jumbo v1, "EMAIL"

    const-string/jumbo v2, "email"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->EMAIL:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    .line 157
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    const-string/jumbo v1, "USER_BIRTHDAY"

    const-string/jumbo v2, "user_birthday"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->USER_BIRTHDAY:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    .line 146
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLIC_PROFILE:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLISH_ACTIONS:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->EMAIL:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->USER_BIRTHDAY:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->$VALUES:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

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
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 162
    iput-object p3, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->mPermission:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->$VALUES:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    return-object v0
.end method


# virtual methods
.method public isGranted()Z
    .locals 2

    .prologue
    .line 175
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->mPermission:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->mPermission:Ljava/lang/String;

    return-object v0
.end method
