.class final enum Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;
.super Ljava/lang/Enum;
.source "PushNotificationIri.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field public static final enum CHECK_IN_COMMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field public static final enum CHECK_IN_FRIENDS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field public static final enum CHECK_IN_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field public static final enum COMPLIMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field public static final enum EVENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field public static final enum MESSAGES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field public static final enum PHOTO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field public static final enum TIP_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

.field public static final enum VIDEO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;


# instance fields
.field private mAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    const-string/jumbo v1, "PHOTO_LIKES"

    const-string/jumbo v2, "Photo Likes"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->PHOTO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 127
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    const-string/jumbo v1, "VIDEO_LIKES"

    const-string/jumbo v2, "Video Likes"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->VIDEO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 128
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    const-string/jumbo v1, "COMPLIMENTS"

    const-string/jumbo v2, "Compliments"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->COMPLIMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 129
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    const-string/jumbo v1, "MESSAGES"

    const-string/jumbo v2, "Messages"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->MESSAGES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 130
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    const-string/jumbo v1, "TIP_LIKES"

    const-string/jumbo v2, "Tip Likes"

    invoke-direct {v0, v1, v8, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->TIP_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 131
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    const-string/jumbo v1, "EVENTS"

    const/4 v2, 0x5

    const-string/jumbo v3, "Events"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->EVENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 132
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    const-string/jumbo v1, "CHECK_IN_LIKES"

    const/4 v2, 0x6

    const-string/jumbo v3, "Check-In Likes"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 133
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    const-string/jumbo v1, "CHECK_IN_COMMENTS"

    const/4 v2, 0x7

    const-string/jumbo v3, "Check-In Comments"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_COMMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 134
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    const-string/jumbo v1, "CHECK_IN_FRIENDS"

    const/16 v2, 0x8

    const-string/jumbo v3, "Check-In Friends"

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_FRIENDS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    .line 125
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->PHOTO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->VIDEO_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->COMPLIMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->MESSAGES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->TIP_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->EVENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_LIKES:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_COMMENTS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->CHECK_IN_FRIENDS:Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->$VALUES:[Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->mAction:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;
    .locals 1

    .prologue
    .line 125
    const-class v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->$VALUES:[Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Action;->mAction:Ljava/lang/String;

    return-object v0
.end method
