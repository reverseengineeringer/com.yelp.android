.class public final enum Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;
.super Ljava/lang/Enum;
.source "BusinessSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FormatMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

.field public static final enum FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

.field public static final enum SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;


# instance fields
.field public final specifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    const-string/jumbo v1, "FULL"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 101
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    const-string/jumbo v1, "SHORT"

    const-string/jumbo v2, "1"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->$VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->specifier:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->$VALUES:[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    return-object v0
.end method
