.class public enum Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
.super Ljava/lang/Enum;
.source "FacebookConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/FacebookConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "FbPermissionSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

.field public static final enum DEFAULT_EMAIL_BIRTHDAY_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

.field public static final enum DEFAULT_READ:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

.field public static final enum DEFAULT_READ_PUBLISH:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

.field public static final enum DEFAULT_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;


# instance fields
.field private final mPublishPermissions:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

.field private final mReadPermissions:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    const-string/jumbo v1, "DEFAULT_READ"

    new-array v2, v6, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLIC_PROFILE:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v3, v2, v5

    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h()[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;-><init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)V

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    .line 69
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    const-string/jumbo v1, "DEFAULT_READ_PUBLISH"

    new-array v2, v6, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLIC_PROFILE:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v3, v2, v5

    new-array v3, v6, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    sget-object v4, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLISH_ACTIONS:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v4, v3, v5

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;-><init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)V

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ_PUBLISH:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    .line 72
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    const-string/jumbo v1, "DEFAULT_USER_FRIEND"

    new-array v2, v7, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLIC_PROFILE:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v3, v2, v5

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v3, v2, v6

    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h()[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    move-result-object v3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;-><init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)V

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    .line 77
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet$1;

    const-string/jumbo v1, "DEFAULT_EMAIL_BIRTHDAY_USER_FRIEND"

    new-array v2, v9, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLIC_PROFILE:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v3, v2, v5

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->EMAIL:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v3, v2, v6

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->USER_BIRTHDAY:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v3, v2, v7

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    aput-object v3, v2, v8

    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h()[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    move-result-object v3

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet$1;-><init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)V

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_EMAIL_BIRTHDAY_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    .line 67
    new-array v0, v9, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ_PUBLISH:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_EMAIL_BIRTHDAY_USER_FRIEND:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->$VALUES:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;",
            "[",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->mReadPermissions:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    .line 102
    iput-object p4, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->mPublishPermissions:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;Lcom/yelp/android/ui/activities/FacebookConnectManager$1;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;-><init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)V

    return-void
.end method

.method private allPermissionsGranted([Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 126
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 127
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    :goto_1
    return v0

    .line 126
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getPermissionsStrings([Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 137
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->$VALUES:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    invoke-virtual {v0}, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    return-object v0
.end method


# virtual methods
.method public allPublishPermissionsGranted()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->getPublishPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->allPermissionsGranted([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public allReadPermissionsGranted()Z
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->getReadPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->allPermissionsGranted([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPublishPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->mPublishPermissions:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->getPermissionsStrings([Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->mReadPermissions:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->getPermissionsStrings([Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPublishPermissions()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->mPublishPermissions:[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h()[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
