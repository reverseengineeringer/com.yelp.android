.class public enum Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;
.super Ljava/lang/Enum;
.source "MessagingRequestType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

.field public static final enum Default:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

.field public static final enum NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

.field public static final enum OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    const-string/jumbo v1, "Default"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->Default:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    .line 13
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType$1;

    const-string/jumbo v1, "OlderThan"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    .line 22
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType$2;

    const-string/jumbo v1, "NewerThan"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->Default:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    return-object v0
.end method


# virtual methods
.method addParameter(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method
