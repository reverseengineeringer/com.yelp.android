.class public final enum Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;
.super Ljava/lang/Enum;
.source "BusinessObjectFlagRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

.field public static final enum PHOTO:Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

.field public static final enum VIDEO:Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;


# instance fields
.field private final mediaType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "photo"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->PHOTO:Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    .line 12
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    const-string/jumbo v1, "VIDEO"

    const-string/jumbo v2, "video"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->VIDEO:Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->PHOTO:Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->VIDEO:Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->$VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->mediaType:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->$VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/BusinessObjectFlagRequest$FlaggableObject;

    return-object v0
.end method
