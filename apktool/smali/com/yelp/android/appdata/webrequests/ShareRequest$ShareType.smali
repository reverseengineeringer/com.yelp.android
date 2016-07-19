.class public final enum Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;
.super Ljava/lang/Enum;
.source "ShareRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/ShareRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

.field public static final enum FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

.field public static final enum TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

.field public static final enum YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;


# instance fields
.field private mTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    const-string/jumbo v1, "YELP"

    const-string/jumbo v2, "push"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 10
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    const-string/jumbo v1, "FACEBOOK"

    const-string/jumbo v2, "facebook"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 11
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    const-string/jumbo v1, "TWITTER"

    const-string/jumbo v2, "twitter"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->mTypeString:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    return-object v0
.end method


# virtual methods
.method public getNameStringResource()I
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$1;->a:[I

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    const v0, 0x7f0704c5

    :goto_0
    return v0

    .line 26
    :pswitch_0
    const v0, 0x7f0702c1

    goto :goto_0

    .line 28
    :pswitch_1
    const v0, 0x7f07060d

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->mTypeString:Ljava/lang/String;

    return-object v0
.end method
