.class public final enum Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;
.super Ljava/lang/Enum;
.source "BusinessObjectDeleteRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeletableObject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

.field public static final enum PHOTO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

.field public static final enum VIDEO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;


# instance fields
.field private final mediaType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "photo"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->PHOTO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    .line 10
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    const-string/jumbo v1, "VIDEO"

    const-string/jumbo v2, "video"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->VIDEO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->PHOTO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->VIDEO:Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->$VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->mediaType:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->$VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/BusinessObjectDeleteRequest$DeletableObject;

    return-object v0
.end method
