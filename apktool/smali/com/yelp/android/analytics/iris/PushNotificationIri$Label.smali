.class final enum Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;
.super Ljava/lang/Enum;
.source "PushNotificationIri.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

.field public static final enum CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

.field public static final enum COMMENT_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

.field public static final enum DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

.field public static final enum LIKE_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

.field public static final enum REPLY_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;


# instance fields
.field private final mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 151
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    const-string/jumbo v1, "CLICK"

    const-string/jumbo v2, "Click"

    invoke-direct {v0, v1, v3, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    .line 152
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    const-string/jumbo v1, "DELETE"

    const-string/jumbo v2, "Delete"

    invoke-direct {v0, v1, v4, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    .line 153
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    const-string/jumbo v1, "LIKE_BUTTON"

    const-string/jumbo v2, "Like Button"

    invoke-direct {v0, v1, v5, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->LIKE_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    .line 154
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    const-string/jumbo v1, "COMMENT_BUTTON"

    const-string/jumbo v2, "Comment Button"

    invoke-direct {v0, v1, v6, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->COMMENT_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    .line 155
    new-instance v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    const-string/jumbo v1, "REPLY_BUTTON"

    const-string/jumbo v2, "Reply Button"

    invoke-direct {v0, v1, v7, v2}, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->REPLY_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    .line 150
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->CLICK:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->DELETE:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->LIKE_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->COMMENT_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->REPLY_BUTTON:Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->$VALUES:[Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

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
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput-object p3, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->mLabel:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;
    .locals 1

    .prologue
    .line 150
    const-class v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->$VALUES:[Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    invoke-virtual {v0}, [Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yelp/android/analytics/iris/PushNotificationIri$Label;->mLabel:Ljava/lang/String;

    return-object v0
.end method
