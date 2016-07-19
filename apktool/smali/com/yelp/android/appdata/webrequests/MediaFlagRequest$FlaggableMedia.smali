.class public final enum Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;
.super Ljava/lang/Enum;
.source "MediaFlagRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/MediaFlagRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlaggableMedia"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

.field public static final enum BUSINESS_PHOTO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

.field public static final enum BUSINESS_VIDEO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

.field public static final enum USER_PHOTO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;


# instance fields
.field public apiPath:Ljava/lang/String;

.field public idParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    const-string/jumbo v1, "BUSINESS_PHOTO"

    const-string/jumbo v2, "/business/photo/flag"

    const-string/jumbo v3, "photo_id"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    .line 15
    new-instance v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    const-string/jumbo v1, "BUSINESS_VIDEO"

    const-string/jumbo v2, "/business/video/flag"

    const-string/jumbo v3, "video_id"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    .line 16
    new-instance v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    const-string/jumbo v1, "USER_PHOTO"

    const-string/jumbo v2, "/user/profile/photo/flag"

    const-string/jumbo v3, "user_photo_id"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->USER_PHOTO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->USER_PHOTO:Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->$VALUES:[Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->apiPath:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->idParam:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->$VALUES:[Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/MediaFlagRequest$FlaggableMedia;

    return-object v0
.end method
