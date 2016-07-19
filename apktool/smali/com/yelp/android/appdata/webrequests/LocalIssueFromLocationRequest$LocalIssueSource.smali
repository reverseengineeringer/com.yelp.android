.class public final enum Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;
.super Ljava/lang/Enum;
.source "LocalIssueFromLocationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalIssueSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

.field public static final enum MENU:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

.field public static final enum NEARBY:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;


# instance fields
.field final apiString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    const-string/jumbo v1, "NEARBY"

    const-string/jumbo v2, "nearby"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->NEARBY:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    .line 19
    new-instance v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    const-string/jumbo v1, "MENU"

    const-string/jumbo v2, "menu"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->MENU:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->NEARBY:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->MENU:Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->$VALUES:[Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->apiString:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->$VALUES:[Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/LocalIssueFromLocationRequest$LocalIssueSource;

    return-object v0
.end method
