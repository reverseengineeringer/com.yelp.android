.class public final enum Lcom/yelp/android/appdata/PermissionGroup;
.super Ljava/lang/Enum;
.source "PermissionGroup.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/PermissionGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/PermissionGroup;

.field public static final enum CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

.field public static final enum CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

.field public static final enum LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

.field public static final enum MICROPHONE:Lcom/yelp/android/appdata/PermissionGroup;

.field public static final enum STORAGE:Lcom/yelp/android/appdata/PermissionGroup;


# instance fields
.field public final permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcom/yelp/android/appdata/PermissionGroup;

    const-string/jumbo v1, "CAMERA"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    .line 20
    new-instance v0, Lcom/yelp/android/appdata/PermissionGroup;

    const-string/jumbo v1, "CONTACTS"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    aput-object v3, v2, v4

    const-string/jumbo v3, "android.permission.GET_ACCOUNTS"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/appdata/PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    .line 21
    new-instance v0, Lcom/yelp/android/appdata/PermissionGroup;

    const-string/jumbo v1, "LOCATION"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v2, v4

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/appdata/PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    .line 22
    new-instance v0, Lcom/yelp/android/appdata/PermissionGroup;

    const-string/jumbo v1, "MICROPHONE"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/appdata/PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/PermissionGroup;->MICROPHONE:Lcom/yelp/android/appdata/PermissionGroup;

    .line 23
    new-instance v0, Lcom/yelp/android/appdata/PermissionGroup;

    const-string/jumbo v1, "STORAGE"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/appdata/PermissionGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/appdata/PermissionGroup;

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CONTACTS:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->MICROPHONE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yelp/android/appdata/PermissionGroup;->$VALUES:[Lcom/yelp/android/appdata/PermissionGroup;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/yelp/android/appdata/PermissionGroup;->permissions:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static find(Ljava/lang/String;)Lcom/yelp/android/appdata/PermissionGroup;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-static {}, Lcom/yelp/android/appdata/PermissionGroup;->values()[Lcom/yelp/android/appdata/PermissionGroup;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 39
    iget-object v6, v5, Lcom/yelp/android/appdata/PermissionGroup;->permissions:[Ljava/lang/String;

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_1

    aget-object v8, v6, v0

    .line 40
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 41
    return-object v5

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Provided permission does not belong to any of the defined permission groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 49
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/PermissionGroup;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/PermissionGroup;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/PermissionGroup;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->$VALUES:[Lcom/yelp/android/appdata/PermissionGroup;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/PermissionGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/PermissionGroup;

    return-object v0
.end method
