.class public final enum Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;
.super Ljava/lang/Enum;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

.field public static final enum DELETE:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

.field public static final enum GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

.field public static final enum POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

.field public static final enum PUT:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 835
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    .line 836
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    .line 837
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->PUT:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    .line 838
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->DELETE:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    .line 834
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->PUT:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->DELETE:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 834
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;
    .locals 1

    .prologue
    .line 834
    const-class v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;
    .locals 1

    .prologue
    .line 834
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    return-object v0
.end method
